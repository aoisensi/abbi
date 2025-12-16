import 'package:freezed_annotation/freezed_annotation.dart';

part 'hash_cache.freezed.dart';
part 'hash_cache.g.dart';

@freezed
abstract class HashCache with _$HashCache {
  const factory HashCache({
    required int size,
    required DateTime modified,
    required String hash,
  }) = _HashCache;

  factory HashCache.fromJson(Map<String, dynamic> json) =>
      _$HashCacheFromJson(json);
}
