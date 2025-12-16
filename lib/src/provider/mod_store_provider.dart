import 'dart:async';

import 'package:abbi/src/provider/basket_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sembast/sembast.dart';

import '../entity/mod.dart';

final modStoreProvider = AsyncNotifierProvider.family(ModStoreNotifier.new);

class ModStoreNotifier extends AsyncNotifier<Mod?> {
  static final _store = StoreRef<String, dynamic>('mods');
  final String hash;

  ModStoreNotifier(this.hash);

  @override
  FutureOr<Mod?> build() async {
    final basket = await ref.watch(basketProvider.future);
    final json = await _store.record(hash).get(basket);
    if (json == null) return null;
    return Mod.fromJson(json);
  }

  Future<void> put(Mod mod) async {
    state = AsyncData(mod);
    final basket = await ref.read(basketProvider.future);
    await _store.record(hash).put(basket, mod.toJson());
  }
}
