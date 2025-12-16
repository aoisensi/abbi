import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:abbi/src/entity/hash_cache.dart';
import 'package:abbi/src/provider/basket_provider.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as $path;
import 'package:sembast/sembast.dart';

final hashCacheProvider = AsyncNotifierProvider(HashCacheNotifier.new);

class HashCacheNotifier extends AsyncNotifier<Map<String, HashCache>> {
  static final _store = StoreRef<String, dynamic>('hash_caches');

  @override
  FutureOr<Map<String, HashCache>> build() async {
    final basket = await ref.watch(basketProvider.future);
    final names = await _store.findKeys(basket);
    return Map.fromEntries(
      await Future.wait(
        names.map(
          (name) async => MapEntry(
            name,
            HashCache.fromJson(await _store.record(name).get(basket)),
          ),
        ),
      ),
    );
  }

  Future<void> put(String name, HashCache cache) async {
    state = AsyncData({...await future, name: cache});
    final basket = await ref.read(basketProvider.future);
    await _store.record(name).put(basket, cache.toJson());
  }

  Future<(String, bool)> find(File file) async {
    final name = $path.basename(file.path);
    final cache = (await future)[name];
    if (cache == null) return (await store(file), false);
    final stat = await file.stat();
    if (stat.modified != cache.modified || stat.size != cache.size) {
      return (await store(file), false);
    }
    return (cache.hash, true);
  }

  Future<String> store(File file) async {
    final hash = base64UrlEncode(
      (await (sha256.bind(file.openRead()).first)).bytes,
    ).replaceAll('=', ' ');
    final stat = await file.stat();
    final cache = HashCache(
      size: stat.size,
      modified: stat.modified,
      hash: hash,
    );
    await put($path.basename(file.path), cache);
    return hash;
  }
}
