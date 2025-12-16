import 'package:freezed_annotation/freezed_annotation.dart';

import 'mod_manifest.dart';

part 'mod.freezed.dart';
part 'mod.g.dart';

@freezed
abstract class Mod with _$Mod {
  const factory Mod({required ModManifest manifest}) = _Mod;

  factory Mod.fromJson(Map<String, dynamic> json) => _$ModFromJson(json);
}
