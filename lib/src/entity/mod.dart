import 'package:freezed_annotation/freezed_annotation.dart';

import 'mod_manifest.dart';

part 'mod.freezed.dart';

@freezed
sealed class Mod with _$Mod {
  const factory Mod.zip({required ModManifest manifest}) = ZipMod;

  const factory Mod.dir({required ModManifest manifest}) = DirMod;
}
