import 'package:freezed_annotation/freezed_annotation.dart';

part 'mod_manifest.freezed.dart';
part 'mod_manifest.g.dart';

@freezed
abstract class ModManifest with _$ModManifest {
  const factory ModManifest({
    required String name,
    required String id,
    required String description,
    required String version,
  }) = _ModManifest;

  factory ModManifest.fromJson(Map<String, dynamic> json) =>
      _$ModManifestFromJson(json);
}
