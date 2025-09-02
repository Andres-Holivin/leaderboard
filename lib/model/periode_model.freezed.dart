// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'periode_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PeriodeModel {

 String get name; String get period; bool get isCurrent;
/// Create a copy of PeriodeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PeriodeModelCopyWith<PeriodeModel> get copyWith => _$PeriodeModelCopyWithImpl<PeriodeModel>(this as PeriodeModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PeriodeModel&&(identical(other.name, name) || other.name == name)&&(identical(other.period, period) || other.period == period)&&(identical(other.isCurrent, isCurrent) || other.isCurrent == isCurrent));
}


@override
int get hashCode => Object.hash(runtimeType,name,period,isCurrent);

@override
String toString() {
  return 'PeriodeModel(name: $name, period: $period, isCurrent: $isCurrent)';
}


}

/// @nodoc
abstract mixin class $PeriodeModelCopyWith<$Res>  {
  factory $PeriodeModelCopyWith(PeriodeModel value, $Res Function(PeriodeModel) _then) = _$PeriodeModelCopyWithImpl;
@useResult
$Res call({
 String name, String period, bool isCurrent
});




}
/// @nodoc
class _$PeriodeModelCopyWithImpl<$Res>
    implements $PeriodeModelCopyWith<$Res> {
  _$PeriodeModelCopyWithImpl(this._self, this._then);

  final PeriodeModel _self;
  final $Res Function(PeriodeModel) _then;

/// Create a copy of PeriodeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? period = null,Object? isCurrent = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String,isCurrent: null == isCurrent ? _self.isCurrent : isCurrent // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PeriodeModel].
extension PeriodeModelPatterns on PeriodeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PeriodeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PeriodeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PeriodeModel value)  $default,){
final _that = this;
switch (_that) {
case _PeriodeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PeriodeModel value)?  $default,){
final _that = this;
switch (_that) {
case _PeriodeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String period,  bool isCurrent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PeriodeModel() when $default != null:
return $default(_that.name,_that.period,_that.isCurrent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String period,  bool isCurrent)  $default,) {final _that = this;
switch (_that) {
case _PeriodeModel():
return $default(_that.name,_that.period,_that.isCurrent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String period,  bool isCurrent)?  $default,) {final _that = this;
switch (_that) {
case _PeriodeModel() when $default != null:
return $default(_that.name,_that.period,_that.isCurrent);case _:
  return null;

}
}

}

/// @nodoc


class _PeriodeModel implements PeriodeModel {
  const _PeriodeModel({required this.name, required this.period, this.isCurrent = false});
  

@override final  String name;
@override final  String period;
@override@JsonKey() final  bool isCurrent;

/// Create a copy of PeriodeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PeriodeModelCopyWith<_PeriodeModel> get copyWith => __$PeriodeModelCopyWithImpl<_PeriodeModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PeriodeModel&&(identical(other.name, name) || other.name == name)&&(identical(other.period, period) || other.period == period)&&(identical(other.isCurrent, isCurrent) || other.isCurrent == isCurrent));
}


@override
int get hashCode => Object.hash(runtimeType,name,period,isCurrent);

@override
String toString() {
  return 'PeriodeModel(name: $name, period: $period, isCurrent: $isCurrent)';
}


}

/// @nodoc
abstract mixin class _$PeriodeModelCopyWith<$Res> implements $PeriodeModelCopyWith<$Res> {
  factory _$PeriodeModelCopyWith(_PeriodeModel value, $Res Function(_PeriodeModel) _then) = __$PeriodeModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String period, bool isCurrent
});




}
/// @nodoc
class __$PeriodeModelCopyWithImpl<$Res>
    implements _$PeriodeModelCopyWith<$Res> {
  __$PeriodeModelCopyWithImpl(this._self, this._then);

  final _PeriodeModel _self;
  final $Res Function(_PeriodeModel) _then;

/// Create a copy of PeriodeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? period = null,Object? isCurrent = null,}) {
  return _then(_PeriodeModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String,isCurrent: null == isCurrent ? _self.isCurrent : isCurrent // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
