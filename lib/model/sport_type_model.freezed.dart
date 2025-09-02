// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sport_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SportTypeModel {

 String get name; String get icon;
/// Create a copy of SportTypeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SportTypeModelCopyWith<SportTypeModel> get copyWith => _$SportTypeModelCopyWithImpl<SportTypeModel>(this as SportTypeModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SportTypeModel&&(identical(other.name, name) || other.name == name)&&(identical(other.icon, icon) || other.icon == icon));
}


@override
int get hashCode => Object.hash(runtimeType,name,icon);

@override
String toString() {
  return 'SportTypeModel(name: $name, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $SportTypeModelCopyWith<$Res>  {
  factory $SportTypeModelCopyWith(SportTypeModel value, $Res Function(SportTypeModel) _then) = _$SportTypeModelCopyWithImpl;
@useResult
$Res call({
 String name, String icon
});




}
/// @nodoc
class _$SportTypeModelCopyWithImpl<$Res>
    implements $SportTypeModelCopyWith<$Res> {
  _$SportTypeModelCopyWithImpl(this._self, this._then);

  final SportTypeModel _self;
  final $Res Function(SportTypeModel) _then;

/// Create a copy of SportTypeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? icon = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SportTypeModel].
extension SportTypeModelPatterns on SportTypeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SportTypeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SportTypeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SportTypeModel value)  $default,){
final _that = this;
switch (_that) {
case _SportTypeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SportTypeModel value)?  $default,){
final _that = this;
switch (_that) {
case _SportTypeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String icon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SportTypeModel() when $default != null:
return $default(_that.name,_that.icon);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String icon)  $default,) {final _that = this;
switch (_that) {
case _SportTypeModel():
return $default(_that.name,_that.icon);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String icon)?  $default,) {final _that = this;
switch (_that) {
case _SportTypeModel() when $default != null:
return $default(_that.name,_that.icon);case _:
  return null;

}
}

}

/// @nodoc


class _SportTypeModel implements SportTypeModel {
  const _SportTypeModel({required this.name, required this.icon});
  

@override final  String name;
@override final  String icon;

/// Create a copy of SportTypeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SportTypeModelCopyWith<_SportTypeModel> get copyWith => __$SportTypeModelCopyWithImpl<_SportTypeModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SportTypeModel&&(identical(other.name, name) || other.name == name)&&(identical(other.icon, icon) || other.icon == icon));
}


@override
int get hashCode => Object.hash(runtimeType,name,icon);

@override
String toString() {
  return 'SportTypeModel(name: $name, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$SportTypeModelCopyWith<$Res> implements $SportTypeModelCopyWith<$Res> {
  factory _$SportTypeModelCopyWith(_SportTypeModel value, $Res Function(_SportTypeModel) _then) = __$SportTypeModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String icon
});




}
/// @nodoc
class __$SportTypeModelCopyWithImpl<$Res>
    implements _$SportTypeModelCopyWith<$Res> {
  __$SportTypeModelCopyWithImpl(this._self, this._then);

  final _SportTypeModel _self;
  final $Res Function(_SportTypeModel) _then;

/// Create a copy of SportTypeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? icon = null,}) {
  return _then(_SportTypeModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
