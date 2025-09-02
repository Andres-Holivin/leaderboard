// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leaderboard_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LeaderboardTypeModel {

 String get name; String get icon;
/// Create a copy of LeaderboardTypeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaderboardTypeModelCopyWith<LeaderboardTypeModel> get copyWith => _$LeaderboardTypeModelCopyWithImpl<LeaderboardTypeModel>(this as LeaderboardTypeModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaderboardTypeModel&&(identical(other.name, name) || other.name == name)&&(identical(other.icon, icon) || other.icon == icon));
}


@override
int get hashCode => Object.hash(runtimeType,name,icon);

@override
String toString() {
  return 'LeaderboardTypeModel(name: $name, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $LeaderboardTypeModelCopyWith<$Res>  {
  factory $LeaderboardTypeModelCopyWith(LeaderboardTypeModel value, $Res Function(LeaderboardTypeModel) _then) = _$LeaderboardTypeModelCopyWithImpl;
@useResult
$Res call({
 String name, String icon
});




}
/// @nodoc
class _$LeaderboardTypeModelCopyWithImpl<$Res>
    implements $LeaderboardTypeModelCopyWith<$Res> {
  _$LeaderboardTypeModelCopyWithImpl(this._self, this._then);

  final LeaderboardTypeModel _self;
  final $Res Function(LeaderboardTypeModel) _then;

/// Create a copy of LeaderboardTypeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? icon = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LeaderboardTypeModel].
extension LeaderboardTypeModelPatterns on LeaderboardTypeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaderboardTypeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaderboardTypeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaderboardTypeModel value)  $default,){
final _that = this;
switch (_that) {
case _LeaderboardTypeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaderboardTypeModel value)?  $default,){
final _that = this;
switch (_that) {
case _LeaderboardTypeModel() when $default != null:
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
case _LeaderboardTypeModel() when $default != null:
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
case _LeaderboardTypeModel():
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
case _LeaderboardTypeModel() when $default != null:
return $default(_that.name,_that.icon);case _:
  return null;

}
}

}

/// @nodoc


class _LeaderboardTypeModel implements LeaderboardTypeModel {
  const _LeaderboardTypeModel({required this.name, required this.icon});
  

@override final  String name;
@override final  String icon;

/// Create a copy of LeaderboardTypeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaderboardTypeModelCopyWith<_LeaderboardTypeModel> get copyWith => __$LeaderboardTypeModelCopyWithImpl<_LeaderboardTypeModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaderboardTypeModel&&(identical(other.name, name) || other.name == name)&&(identical(other.icon, icon) || other.icon == icon));
}


@override
int get hashCode => Object.hash(runtimeType,name,icon);

@override
String toString() {
  return 'LeaderboardTypeModel(name: $name, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$LeaderboardTypeModelCopyWith<$Res> implements $LeaderboardTypeModelCopyWith<$Res> {
  factory _$LeaderboardTypeModelCopyWith(_LeaderboardTypeModel value, $Res Function(_LeaderboardTypeModel) _then) = __$LeaderboardTypeModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String icon
});




}
/// @nodoc
class __$LeaderboardTypeModelCopyWithImpl<$Res>
    implements _$LeaderboardTypeModelCopyWith<$Res> {
  __$LeaderboardTypeModelCopyWithImpl(this._self, this._then);

  final _LeaderboardTypeModel _self;
  final $Res Function(_LeaderboardTypeModel) _then;

/// Create a copy of LeaderboardTypeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? icon = null,}) {
  return _then(_LeaderboardTypeModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
