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


  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Mod &&
            (identical(other.manifest, manifest) ||
                other.manifest == manifest));
  }


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

  {

  TResult

  Function

  (

  ZipMod

  value

  )

  ?

  zip

  ,

  TResult

  Function

  (

  DirMod

  value

  )

  ?

  dir

  ,

  required

  TResult

  orElse

  (

  )

  ,
}){
final _that = this;
switch (_that) {
case ZipMod() when zip != null:
return zip(_that);case DirMod() when dir != null:
return dir(_that);case _:
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

@optionalTypeArgs
TResult map<TResult extends Object?>(
    {required TResult Function( ZipMod value) zip, required TResult Function( DirMod value) dir,}) {
  final _that = this;
  switch (_that) {
    case ZipMod():
      return zip(_that);
    case DirMod():
      return dir(_that);
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

@optionalTypeArgs
TResult? mapOrNull<TResult extends Object?>(
    {TResult? Function( ZipMod value)? zip, TResult? Function( DirMod value)? dir,}) {
  final _that = this;
  switch (_that) {
    case ZipMod() when zip != null:
      return zip(_that);
    case DirMod() when dir != null:
      return dir(_that);
    case _:
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

@optionalTypeArgs TResult maybeWhen
<
TResult extends Object?>(
{
TResult
Function
(
ModManifest
manifest
)
?
zip
,
TResult
Function
(
ModManifest
manifest
)
?
dir
,
required
TResult
orElse(),}) {final _that = this;
switch (_that) {
case ZipMod() when zip != null:
return zip(_that.manifest);case DirMod() when dir != null:
return dir(_that.manifest);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( ModManifest manifest) zip,required TResult Function( ModManifest manifest) dir,}) {final _that = this;
switch (_that) {
case ZipMod():
return zip(_that.manifest);case DirMod():
return dir(_that.manifest);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( ModManifest manifest)? zip,TResult? Function( ModManifest manifest)? dir,}) {final _that = this;
switch (_that) {
case ZipMod() when zip != null:
return zip(_that.manifest);case DirMod() when dir != null:
return dir(_that.manifest);case _:
return null;

}
}

}

/// @nodoc


class ZipMod implements Mod {
const ZipMod({required this.manifest});


@override final ModManifest manifest;

/// Create a copy of Mod
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ZipModCopyWith<ZipMod> get copyWith => _$ZipModCopyWithImpl<ZipMod>(this, _$identity);


@override
bool operator ==(Object other) {
return identical(this, other) || (other.runtimeType == runtimeType&&other is ZipMod&&(identical(other.manifest, manifest) || other.manifest == manifest));
}


@override
int get hashCode => Object.hash(runtimeType,manifest);

@override
String toString() {
return 'Mod.zip(manifest: $manifest)';
}


}

/// @nodoc
abstract mixin class $ZipModCopyWith<$Res> implements $ModCopyWith<$Res> {
factory $ZipModCopyWith(ZipMod value, $Res Function(ZipMod) _then) = _$ZipModCopyWithImpl;
@override @useResult
$Res call({
ModManifest manifest
});


@override $ModManifestCopyWith<$Res> get manifest;

}
/// @nodoc
class _$ZipModCopyWithImpl<$Res>
implements $ZipModCopyWith<$Res> {
_$ZipModCopyWithImpl(this._self, this._then);

final ZipMod _self;
final $Res Function(ZipMod) _then;

/// Create a copy of Mod
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? manifest = null,}) {
return _then(ZipMod(
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

/// @nodoc


class DirMod implements Mod {
const DirMod({required this.manifest});


@override final ModManifest manifest;

/// Create a copy of Mod
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DirModCopyWith<DirMod> get copyWith => _$DirModCopyWithImpl<DirMod>(this, _$identity);


@override
bool operator ==(Object other) {
return identical(this, other) || (other.runtimeType == runtimeType&&other is DirMod&&(identical(other.manifest, manifest) || other.manifest == manifest));
}


@override
int get hashCode => Object.hash(runtimeType,manifest);

@override
String toString() {
return 'Mod.dir(manifest: $manifest)';
}


}

/// @nodoc
abstract mixin class $DirModCopyWith<$Res> implements $ModCopyWith<$Res> {
factory $DirModCopyWith(DirMod value, $Res Function(DirMod) _then) = _$DirModCopyWithImpl;
@override @useResult
$Res call({
ModManifest manifest
});


@override $ModManifestCopyWith<$Res> get manifest;

}
/// @nodoc
class _$DirModCopyWithImpl<$Res>
implements $DirModCopyWith<$Res> {
_$DirModCopyWithImpl(this._self, this._then);

final DirMod _self;
final $Res Function(DirMod) _then;

/// Create a copy of Mod
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? manifest = null,}) {
return _then(DirMod(
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
