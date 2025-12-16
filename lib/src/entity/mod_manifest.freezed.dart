// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mod_manifest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ModManifest {

  String get name;

  String get id;

  String get description;

  String get version;

  /// Create a copy of ModManifest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ModManifestCopyWith<ModManifest> get copyWith =>
      _$ModManifestCopyWithImpl<ModManifest>(this as ModManifest, _$identity);

  /// Serializes this ModManifest to a JSON map.
  Map<String, dynamic> toJson();


  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ModManifest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, id, description, version);

  @override
  String toString() {
    return 'ModManifest(name: $name, id: $id, description: $description, version: $version)';
  }


}

/// @nodoc
abstract mixin class $ModManifestCopyWith<$Res> {
  factory $ModManifestCopyWith(ModManifest value,
      $Res Function(ModManifest) _then) = _$ModManifestCopyWithImpl;

  @useResult
  $Res call({
    String name, String id, String description, String version
  });


}
/// @nodoc
class _$ModManifestCopyWithImpl<$Res>
    implements $ModManifestCopyWith<$Res> {
  _$ModManifestCopyWithImpl(this._self, this._then);

  final ModManifest _self;
  final $Res Function(ModManifest) _then;

  /// Create a copy of ModManifest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call(
      {Object? name = null, Object? id = null, Object? description = null, Object? version = null,}) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
      as String,
      id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
      as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
      as String,
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
      as String,
    ));
  }

}


/// Adds pattern-matching-related methods to [ModManifest].
extension ModManifestPatterns on ModManifest {
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

  TResult Function( _ModManifest value)? $default,{required TResult orElse(),}){
  final _that = this;
  switch (_that) {
  case _ModManifest() when $default != null:
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

  @optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ModManifest value) $default,){
  final _that = this;
  switch (_that) {
  case _ModManifest():
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

  @optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ModManifest value)? $default,){
  final _that = this;
  switch (_that) {
  case _ModManifest() when $default != null:
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

  @optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name, String id, String description, String version)? $default,{required TResult orElse(),}) {final _that = this;
  switch (_that) {
  case _ModManifest() when $default != null:
  return $default(_that.name,_that.id,_that.description,_that.version);case _:
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

  @optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name, String id, String description, String version) $default,) {final _that = this;
  switch (_that) {
  case _ModManifest():
  return $default(_that.name,_that.id,_that.description,_that.version);case _:
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

  @optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name, String id, String description, String version)? $default,) {final _that = this;
  switch (_that) {
  case _ModManifest() when $default != null:
  return $default(_that.name,_that.id,_that.description,_that.version);case _:
  return null;

  }
  }

}

/// @nodoc
@JsonSerializable()

class _ModManifest implements ModManifest {
  const _ModManifest(
      {required this.name, required this.id, required this.description, required this.version});

  factory _ModManifest.fromJson(Map<String, dynamic> json) =>
      _$ModManifestFromJson(json);

  @override final String name;
  @override final String id;
  @override final String description;
  @override final String version;

  /// Create a copy of ModManifest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ModManifestCopyWith<_ModManifest> get copyWith =>
      __$ModManifestCopyWithImpl<_ModManifest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ModManifestToJson(this,);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ModManifest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, id, description, version);

  @override
  String toString() {
    return 'ModManifest(name: $name, id: $id, description: $description, version: $version)';
  }


}

/// @nodoc
abstract mixin class _$ModManifestCopyWith<$Res>
    implements $ModManifestCopyWith<$Res> {
  factory _$ModManifestCopyWith(_ModManifest value,
      $Res Function(_ModManifest) _then) = __$ModManifestCopyWithImpl;

  @override
  @useResult
  $Res call({
    String name, String id, String description, String version
  });


}
/// @nodoc
class __$ModManifestCopyWithImpl<$Res>
    implements _$ModManifestCopyWith<$Res> {
  __$ModManifestCopyWithImpl(this._self, this._then);

  final _ModManifest _self;
  final $Res Function(_ModManifest) _then;

  /// Create a copy of ModManifest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call(
      {Object? name = null, Object? id = null, Object? description = null, Object? version = null,}) {
    return _then(_ModManifest(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
      as String,
      id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
      as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
      as String,
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
      as String,
    ));
  }


}

// dart format on
