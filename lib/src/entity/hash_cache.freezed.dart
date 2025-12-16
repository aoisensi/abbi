// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hash_cache.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HashCache {

  int get size;

  DateTime get modified;

  String get hash;

  /// Create a copy of HashCache
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HashCacheCopyWith<HashCache> get copyWith =>
      _$HashCacheCopyWithImpl<HashCache>(this as HashCache, _$identity);

  /// Serializes this HashCache to a JSON map.
  Map<String, dynamic> toJson();


  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HashCache &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.modified, modified) ||
                other.modified == modified) &&
            (identical(other.hash, hash) || other.hash == hash));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, size, modified, hash);

  @override
  String toString() {
    return 'HashCache(size: $size, modified: $modified, hash: $hash)';
  }


}

/// @nodoc
abstract mixin class $HashCacheCopyWith<$Res> {
  factory $HashCacheCopyWith(HashCache value,
      $Res Function(HashCache) _then) = _$HashCacheCopyWithImpl;

  @useResult
  $Res call({
    int size, DateTime modified, String hash
  });


}
/// @nodoc
class _$HashCacheCopyWithImpl<$Res>
    implements $HashCacheCopyWith<$Res> {
  _$HashCacheCopyWithImpl(this._self, this._then);

  final HashCache _self;
  final $Res Function(HashCache) _then;

  /// Create a copy of HashCache
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call(
      {Object? size = null, Object? modified = null, Object? hash = null,}) {
    return _then(_self.copyWith(
      size: null == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
      as int,
      modified: null == modified
          ? _self.modified
          : modified // ignore: cast_nullable_to_non_nullable
      as DateTime,
      hash: null == hash
          ? _self.hash
          : hash // ignore: cast_nullable_to_non_nullable
      as String,
    ));
  }

}


/// Adds pattern-matching-related methods to [HashCache].
extension HashCachePatterns on HashCache {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs TResult maybeMap

  <

  TResult

  extends

  Object?

  >

  (

  TResult Function( _HashCache value)? $default,{required TResult orElse(),}){
  final _that = this;
  switch (_that) {
  case _HashCache() when $default != null:
  return $default(_that);case _:
  return orElse();

  }
  }
  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HashCache value) $default,){
  final _that = this;
  switch (_that) {
  case _HashCache():
  return $default(_that);case _:
  throw StateError('Unexpected subclass');

  }
  }
  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HashCache value)? $default,){
  final _that = this;
  switch (_that) {
  case _HashCache() when $default != null:
  return $default(_that);case _:
  return null;

  }
  }
  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int size, DateTime modified, String hash)? $default,{required TResult orElse(),}) {final _that = this;
  switch (_that) {
  case _HashCache() when $default != null:
  return $default(_that.size,_that.modified,_that.hash);case _:
  return orElse();

  }
  }
  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int size, DateTime modified, String hash) $default,) {final _that = this;
  switch (_that) {
  case _HashCache():
  return $default(_that.size,_that.modified,_that.hash);case _:
  throw StateError('Unexpected subclass');

  }
  }
  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int size, DateTime modified, String hash)? $default,) {final _that = this;
  switch (_that) {
  case _HashCache() when $default != null:
  return $default(_that.size,_that.modified,_that.hash);case _:
  return null;

  }
  }

}

/// @nodoc
@JsonSerializable()

class _HashCache implements HashCache {
  const _HashCache(
      {required this.size, required this.modified, required this.hash});

  factory _HashCache.fromJson(Map<String, dynamic> json) =>
      _$HashCacheFromJson(json);

  @override final int size;
  @override final DateTime modified;
  @override final String hash;

  /// Create a copy of HashCache
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HashCacheCopyWith<_HashCache> get copyWith =>
      __$HashCacheCopyWithImpl<_HashCache>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$HashCacheToJson(this,);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _HashCache &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.modified, modified) ||
                other.modified == modified) &&
            (identical(other.hash, hash) || other.hash == hash));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, size, modified, hash);

  @override
  String toString() {
    return 'HashCache(size: $size, modified: $modified, hash: $hash)';
  }


}

/// @nodoc
abstract mixin class _$HashCacheCopyWith<$Res>
    implements $HashCacheCopyWith<$Res> {
  factory _$HashCacheCopyWith(_HashCache value,
      $Res Function(_HashCache) _then) = __$HashCacheCopyWithImpl;

  @override
  @useResult
  $Res call({
    int size, DateTime modified, String hash
  });


}
/// @nodoc
class __$HashCacheCopyWithImpl<$Res>
    implements _$HashCacheCopyWith<$Res> {
  __$HashCacheCopyWithImpl(this._self, this._then);

  final _HashCache _self;
  final $Res Function(_HashCache) _then;

  /// Create a copy of HashCache
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call(
      {Object? size = null, Object? modified = null, Object? hash = null,}) {
    return _then(_HashCache(
      size: null == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
      as int,
      modified: null == modified
          ? _self.modified
          : modified // ignore: cast_nullable_to_non_nullable
      as DateTime,
      hash: null == hash
          ? _self.hash
          : hash // ignore: cast_nullable_to_non_nullable
      as String,
    ));
  }


}

// dart format on
