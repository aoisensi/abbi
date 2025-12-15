import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:abbi/src/entity/mod_manifest.dart';
import 'package:abbi/src/provider/omori_provider.dart';
import 'package:archive/archive.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as $path;
import 'package:synchronized/synchronized.dart';

import '../entity/mod.dart';

final modFilesProvider = AsyncNotifierProvider(ModFilesNotifier.new);

final modProvider = FutureProvider.family<Mod?, FileSystemEntity>((
  ref,
  entity,
) async {
  final lock = ref.watch(_modLockProvider);
  return lock.synchronized(() async {
    if (entity is File) {
      return await compute((File file) {
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
          return ZipMod(manifest: manifest);
        } finally {
          stream.close();
        }
      }, entity);
    }
    if (entity is Directory) {
      final manifestFile = File($path.join(entity.path, _manifestFileName));
      if (!await manifestFile.exists()) return null;
      final manifest = ModManifest.fromJson(
        jsonDecode(await manifestFile.readAsString()),
      );
      return DirMod(manifest: manifest);
    }
    return null;
  });
});

class ModFilesNotifier extends AsyncNotifier<Set<FileSystemEntity>> {
  @override
  FutureOr<Set<FileSystemEntity>> build() async {
    final path = await ref.watch(_availableModsPathProvider.future);
    if (path == null) throw 'OMORI is not installed';
    final directory = Directory(path);
    return await directory.list().toSet();
  }
}

final _modLockProvider = Provider((_) => Lock());

final _availableModsPathProvider = FutureProvider((ref) async {
  final omoriPath = await ref.watch(omoriPathProvider.future);
  if (omoriPath == null) return null;
  return $path.join(omoriPath, 'mods');
});

const _manifestFileName = 'mod.json';

class NotModException implements Exception {}
