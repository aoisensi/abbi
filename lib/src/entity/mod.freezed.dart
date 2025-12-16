// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Mod {

  ModManifest get manifest;

  /// Create a copy of Mod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ModCopyWith<Mod> get copyWith =>
      _$ModCopyWithImpl<Mod>(this as Mod, _$identity);

  /// Serializes this Mod to a JSON map.
  Map<String, dynamic> toJson();


  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Mod &&
            (identical(other.manifest, manifest) ||
                other.manifest == manifest));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, manifest);

  @override
  String toString() {
    return 'Mod(manifest: $manifest)';
  }


}

/// @nodoc
abstract mixin class $ModCopyWith<$Res> {
  factory $ModCopyWith(Mod value, $Res Function(Mod) _then) = _$ModCopyWithImpl;

  @useResult
  $Res call({
    ModManifest manifest
  });


  $ModManifestCopyWith<$Res> get manifest;

}
/// @nodoc
class _$ModCopyWithImpl<$Res>
    implements $ModCopyWith<$Res> {
  _$ModCopyWithImpl(this._self, this._then);

  final Mod _self;
  final $Res Function(Mod) _then;

  /// Create a copy of Mod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? manifest = null,}) {
    return _then(_self.copyWith(
      manifest: null == manifest
          ? _self.manifest
          : manifest // ignore: cast_nullable_to_non_nullable
      as ModManifest,
    ));
  }

  /// Create a copy of Mod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModManifestCopyWith<$Res> get manifest {
    return $ModManifestCopyWith<$Res>(_self.manifest, (value) {
      return _then(_self.copyWith(manifest: value));
    });
  }
}


/// Adds pattern-matching-related methods to [Mod].
extension ModPatterns on Mod {
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

  TResult Function( _Mod value)? $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
  case _Mod() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Mod value) $default,){
  final _that = this;
  switch (_that) {
  case _Mod():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Mod value)? $default,){
  final _that = this;
  switch (_that) {
  case _Mod() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ModManifest manifest)? $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Mod() when $default != null:
return $default(_that.manifest);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ModManifest manifest) $default,) {final _that = this;
switch (_that) {
case _Mod():
return $default(_that.manifest);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ModManifest manifest)? $default,) {final _that = this;
switch (_that) {
  case _Mod() when $default != null:
  return $default(_that.manifest);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Mod implements Mod {
  const _Mod({required this.manifest});
  factory _Mod.fromJson(Map<String, dynamic> json) => _$ModFromJson(json);

  @override final ModManifest manifest;

/// Create a copy of Mod
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ModCopyWith<_Mod> get copyWith => __$ModCopyWithImpl<_Mod>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ModToJson(this,);
}

@override
bool operator ==(Object other) {
  return identical(this, other) ||
      (other.runtimeType == runtimeType && other is _Mod &&
          (identical(other.manifest, manifest) || other.manifest == manifest));
}

  @JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,manifest);

@override
String toString() {
  return 'Mod(manifest: $manifest)';
}


}

/// @nodoc
abstract mixin class _$ModCopyWith<$Res> implements $ModCopyWith<$Res> {
  factory _$ModCopyWith(_Mod value,
      $Res Function(_Mod) _then) = __$ModCopyWithImpl;
@override @useResult
$Res call({
  ModManifest manifest
});


@override $ModManifestCopyWith<$Res> get manifest;

}
/// @nodoc
class __$ModCopyWithImpl<$Res>
    implements _$ModCopyWith<$Res> {
  __$ModCopyWithImpl(this._self, this._then);

  final _Mod _self;
  final $Res Function(_Mod) _then;

/// Create a copy of Mod
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? manifest = null,}) {
  return _then(_Mod(
manifest: null == manifest ? _self.manifest : manifest // ignore: cast_nullable_to_non_nullable
as ModManifest,
  ));
}

/// Create a copy of Mod
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ModManifestCopyWith<$Res> get manifest {
  return $ModManifestCopyWith<$Res>(_self.manifest, (value) {
    return _then(_self.copyWith(manifest: value));
  });
}
}

// dart format on
