// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LeaderboardFilterState {

 SportType? get sportType; Category? get category; Region? get region;
/// Create a copy of LeaderboardFilterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaderboardFilterStateCopyWith<LeaderboardFilterState> get copyWith => _$LeaderboardFilterStateCopyWithImpl<LeaderboardFilterState>(this as LeaderboardFilterState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaderboardFilterState&&(identical(other.sportType, sportType) || other.sportType == sportType)&&(identical(other.category, category) || other.category == category)&&(identical(other.region, region) || other.region == region));
}


@override
int get hashCode => Object.hash(runtimeType,sportType,category,region);

@override
String toString() {
  return 'LeaderboardFilterState(sportType: $sportType, category: $category, region: $region)';
}


}

/// @nodoc
abstract mixin class $LeaderboardFilterStateCopyWith<$Res>  {
  factory $LeaderboardFilterStateCopyWith(LeaderboardFilterState value, $Res Function(LeaderboardFilterState) _then) = _$LeaderboardFilterStateCopyWithImpl;
@useResult
$Res call({
 SportType? sportType, Category? category, Region? region
});




}
/// @nodoc
class _$LeaderboardFilterStateCopyWithImpl<$Res>
    implements $LeaderboardFilterStateCopyWith<$Res> {
  _$LeaderboardFilterStateCopyWithImpl(this._self, this._then);

  final LeaderboardFilterState _self;
  final $Res Function(LeaderboardFilterState) _then;

/// Create a copy of LeaderboardFilterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sportType = freezed,Object? category = freezed,Object? region = freezed,}) {
  return _then(_self.copyWith(
sportType: freezed == sportType ? _self.sportType : sportType // ignore: cast_nullable_to_non_nullable
as SportType?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category?,region: freezed == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as Region?,
  ));
}

}


/// Adds pattern-matching-related methods to [LeaderboardFilterState].
extension LeaderboardFilterStatePatterns on LeaderboardFilterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaderboardFilterState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaderboardFilterState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaderboardFilterState value)  $default,){
final _that = this;
switch (_that) {
case _LeaderboardFilterState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaderboardFilterState value)?  $default,){
final _that = this;
switch (_that) {
case _LeaderboardFilterState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SportType? sportType,  Category? category,  Region? region)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaderboardFilterState() when $default != null:
return $default(_that.sportType,_that.category,_that.region);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SportType? sportType,  Category? category,  Region? region)  $default,) {final _that = this;
switch (_that) {
case _LeaderboardFilterState():
return $default(_that.sportType,_that.category,_that.region);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SportType? sportType,  Category? category,  Region? region)?  $default,) {final _that = this;
switch (_that) {
case _LeaderboardFilterState() when $default != null:
return $default(_that.sportType,_that.category,_that.region);case _:
  return null;

}
}

}

/// @nodoc


class _LeaderboardFilterState implements LeaderboardFilterState {
  const _LeaderboardFilterState({this.sportType, this.category, this.region});
  

@override final  SportType? sportType;
@override final  Category? category;
@override final  Region? region;

/// Create a copy of LeaderboardFilterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaderboardFilterStateCopyWith<_LeaderboardFilterState> get copyWith => __$LeaderboardFilterStateCopyWithImpl<_LeaderboardFilterState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaderboardFilterState&&(identical(other.sportType, sportType) || other.sportType == sportType)&&(identical(other.category, category) || other.category == category)&&(identical(other.region, region) || other.region == region));
}


@override
int get hashCode => Object.hash(runtimeType,sportType,category,region);

@override
String toString() {
  return 'LeaderboardFilterState(sportType: $sportType, category: $category, region: $region)';
}


}

/// @nodoc
abstract mixin class _$LeaderboardFilterStateCopyWith<$Res> implements $LeaderboardFilterStateCopyWith<$Res> {
  factory _$LeaderboardFilterStateCopyWith(_LeaderboardFilterState value, $Res Function(_LeaderboardFilterState) _then) = __$LeaderboardFilterStateCopyWithImpl;
@override @useResult
$Res call({
 SportType? sportType, Category? category, Region? region
});




}
/// @nodoc
class __$LeaderboardFilterStateCopyWithImpl<$Res>
    implements _$LeaderboardFilterStateCopyWith<$Res> {
  __$LeaderboardFilterStateCopyWithImpl(this._self, this._then);

  final _LeaderboardFilterState _self;
  final $Res Function(_LeaderboardFilterState) _then;

/// Create a copy of LeaderboardFilterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sportType = freezed,Object? category = freezed,Object? region = freezed,}) {
  return _then(_LeaderboardFilterState(
sportType: freezed == sportType ? _self.sportType : sportType // ignore: cast_nullable_to_non_nullable
as SportType?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category?,region: freezed == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as Region?,
  ));
}


}

// dart format on
