import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:synchronized/synchronized.dart';

class LockNotifier extends Notifier<Lock> {
  @override
  Lock build() => Lock();

  FutureOr<T> synchronized<T>(FutureOr<T> Function() computation) async {
    final result = await state.synchronized(() {
      ref.invalidate(inLockProvider(state));
      return computation();
    });
    ref.invalidate(inLockProvider(state));
    return result;
  }
}

final inLockProvider = NotifierProvider.family(InLockNotifier.new);

class InLockNotifier extends Notifier<bool> {
  final Lock lock;

  InLockNotifier(this.lock);

  @override
  bool build() => lock.inLock;
}
