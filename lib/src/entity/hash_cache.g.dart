// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hash_cache.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HashCache _$HashCacheFromJson(Map<String, dynamic> json) => _HashCache(
  size: (json['size'] as num).toInt(),
  modified: DateTime.parse(json['modified'] as String),
  hash: json['hash'] as String,
);

Map<String, dynamic> _$HashCacheToJson(_HashCache instance) =>
    <String, dynamic>{
      'size': instance.size,
      'modified': instance.modified.toIso8601String(),
      'hash': instance.hash,
    };
