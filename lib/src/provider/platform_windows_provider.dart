import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:win32_registry/win32_registry.dart';

final steamPathProvider = NotifierProvider(
  () => Win32RegistryStringProvider(_steamKey, 'SteamPath'),
);

final _steamKey = Registry.currentUser.createKey(r'Software\Valve\Steam');

class Win32RegistryStringProvider extends _Win32RegistryProvider<String> {
  Win32RegistryStringProvider(super.key, super.name);

  @override
  String? _convert(value) => (value as StringValue).value;
}

abstract class _Win32RegistryProvider<T> extends Notifier<T?> {
  final RegistryKey key;
  final String name;

  _Win32RegistryProvider(this.key, this.name);

  @override
  T? build() {
    final listener = key.onChanged().listen((_) {
      state = _getValue();
    });
    ref.onDispose(listener.cancel);
    return _getValue();
  }

  T? _getValue() {
    final value = key.getValue(name);
    if (value == null) return null;
    return _convert(value);
  }

  T? _convert(RegistryValue value);
}
