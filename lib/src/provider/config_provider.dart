import 'dart:async';

import 'package:abbi/src/provider/basket_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sembast/sembast.dart';

final currentProfileNotifier = AsyncNotifierProvider(
  () => ConfigNotifier<int?>('profile'),
);

class ConfigNotifier<T> extends AsyncNotifier<T> {
  static final _store = StoreRef<String, dynamic>.main();
  final String key;

  ConfigNotifier(this.key);

  @override
  FutureOr<T> build() async {
    final basket = await ref.watch(basketProvider.future);
    return await _store.record(key).get(basket);
  }

  Future<void> put(T value) async {
    final basket = await ref.read(basketProvider.future);
    await _store.record(key).put(basket, value);
    state = AsyncData(value);
  }
}
