import 'dart:async';

import 'package:abbi/src/provider/basket_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sembast/sembast_io.dart';

import '../entity/profile.dart';

final profileProvider = AsyncNotifierProvider.family(
  ProfileNotifier.new,
  isAutoDispose: true,
);

final profileIdsProvider = AsyncNotifierProvider(ProfileIdsNotifier.new);

class ProfileNotifier extends AsyncNotifier<Profile> {
  final int id;

  ProfileNotifier(this.id);

  @override
  FutureOr<Profile> build() async {
    final basket = await ref.watch(basketProvider.future);
    final json = await _store.record(id).get(basket);
    return Profile.fromJson(json!);
  }

  Future<void> put(Profile profile) async {
    state = AsyncData(profile);
    final json = profile.toJson();
    final basket = await ref.read(basketProvider.future);
    await _store.record(id).put(basket, json);
  }
}

class ProfileIdsNotifier extends AsyncNotifier<Set<int>> {
  @override
  FutureOr<Set<int>> build() async {
    final basket = await ref.watch(basketProvider.future);
    return (await _store.findKeys(basket)).toSet();
  }

  Future<int> create() async {
    final basket = await ref.read(basketProvider.future);
    final id = await _store.generateKey(basket);
    _store.record(id).put(basket, {});
    state = AsyncData({...state.requireValue, id});
    return id;
  }
}

final _store = StoreRef<int, Map<String, dynamic>>('profiles');
