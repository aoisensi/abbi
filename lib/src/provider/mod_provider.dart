import 'dart:convert';
import 'dart:io';

import 'package:abbi/src/entity/mod_manifest.dart';
import 'package:abbi/src/provider/file_provider.dart';
import 'package:abbi/src/provider/hash_cache_provider.dart';
import 'package:abbi/src/provider/lock_provider.dart';
import 'package:abbi/src/provider/omori_provider.dart';
import 'package:archive/archive.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as $path;

import '../entity/mod.dart';
import 'mod_store_provider.dart';

final modProvider = FutureProvider.family<Mod?, FileSystemEntity>((
  ref,
  entity,
) async {
  final lock = ref.read(_modLockProvider.notifier);
  return lock.synchronized(() async {
    if (entity is File) {
      final (hash, ok) = await ref
          .read(hashCacheProvider.notifier)
          .find(entity);
      if (ok) {
        return ref.watch(modStoreProvider(hash).future);
      }
      final mod = await compute((File file) {
        final stream = InputFileStream(file.path);
        try {
          final zip = ZipDecoder().decodeStream(stream);
          final roots = zip.files
              .map((file) => $path.split(file.name).first)
              .toSet();
          if (roots.length != 1) return null;
          final id = roots.first;
          final manifestFile = zip.find('$id/$_manifestFileName');
          if (manifestFile == null) return null;
          final manifest = ModManifest.fromJson(
            jsonDecode(utf8.decode(manifestFile.readBytes()!)),
          );
          return Mod(manifest: manifest);
        } finally {
          stream.close();
        }
      }, entity);
      await ref.read(modStoreProvider(hash).notifier).put(mod!);
      return mod;
    }
    if (entity is Directory) {
      final manifestFile = File($path.join(entity.path, _manifestFileName));
      if (!await manifestFile.exists()) return null;
      final manifest = ModManifest.fromJson(
        jsonDecode(await manifestFile.readAsString()),
      );
      return Mod(manifest: manifest);
    }
    return null;
  });
});

final modFilesProvider = FutureProvider((ref) async {
  final path = await ref.watch(_availableModsPathProvider.future);
  if (path == null) throw 'OMORI is not installed';
  return await ref.watch(directoryWatchProvider(path).future);
});

final modLoadingProvider = Provider(
  (ref) =>
      !ref.watch(modFilesProvider).hasValue ||
      ref.watch(inLockProvider(ref.watch(_modLockProvider))),
);

final _modLockProvider = NotifierProvider(LockNotifier.new);

final _availableModsPathProvider = FutureProvider((ref) async {
  final omoriPath = await ref.watch(omoriPathProvider.future);
  if (omoriPath == null) return null;
  return $path.join(omoriPath, 'mods');
});

const _manifestFileName = 'mod.json';

class NotModException implements Exception {}
