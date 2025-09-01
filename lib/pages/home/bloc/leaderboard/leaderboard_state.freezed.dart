// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leaderboard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LeaderboardState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LeaderboardState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaderboardState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LeaderboardState()';
}


}

/// @nodoc
class $LeaderboardStateCopyWith<$Res>  {
$LeaderboardStateCopyWith(LeaderboardState _, $Res Function(LeaderboardState) __);
}


/// Adds pattern-matching-related methods to [LeaderboardState].
extension LeaderboardStatePatterns on LeaderboardState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Success value)?  success,TResult Function( _Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Success value)  success,required TResult Function( _Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Success():
return success(_that);case _Failure():
return failure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Success value)?  success,TResult? Function( _Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<SportType> sportTypes,  List<Category> categories,  List<Region> regions,  List<Podium> podiums,  List<Periode> periods)?  success,TResult Function( String error)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success(_that.sportTypes,_that.categories,_that.regions,_that.podiums,_that.periods);case _Failure() when failure != null:
return failure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<SportType> sportTypes,  List<Category> categories,  List<Region> regions,  List<Podium> podiums,  List<Periode> periods)  success,required TResult Function( String error)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Success():
return success(_that.sportTypes,_that.categories,_that.regions,_that.podiums,_that.periods);case _Failure():
return failure(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<SportType> sportTypes,  List<Category> categories,  List<Region> regions,  List<Podium> podiums,  List<Periode> periods)?  success,TResult? Function( String error)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success(_that.sportTypes,_that.categories,_that.regions,_that.podiums,_that.periods);case _Failure() when failure != null:
return failure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial with DiagnosticableTreeMixin implements LeaderboardState {
  const _Initial();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LeaderboardState.initial'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LeaderboardState.initial()';
}


}




/// @nodoc


class _Loading with DiagnosticableTreeMixin implements LeaderboardState {
  const _Loading();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LeaderboardState.loading'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LeaderboardState.loading()';
}


}




/// @nodoc


class _Success with DiagnosticableTreeMixin implements LeaderboardState {
  const _Success({required final  List<SportType> sportTypes, required final  List<Category> categories, required final  List<Region> regions, required final  List<Podium> podiums, required final  List<Periode> periods}): _sportTypes = sportTypes,_categories = categories,_regions = regions,_podiums = podiums,_periods = periods;
  

 final  List<SportType> _sportTypes;
 List<SportType> get sportTypes {
  if (_sportTypes is EqualUnmodifiableListView) return _sportTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sportTypes);
}

 final  List<Category> _categories;
 List<Category> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<Region> _regions;
 List<Region> get regions {
  if (_regions is EqualUnmodifiableListView) return _regions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_regions);
}

 final  List<Podium> _podiums;
 List<Podium> get podiums {
  if (_podiums is EqualUnmodifiableListView) return _podiums;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_podiums);
}

 final  List<Periode> _periods;
 List<Periode> get periods {
  if (_periods is EqualUnmodifiableListView) return _periods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_periods);
}


/// Create a copy of LeaderboardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessCopyWith<_Success> get copyWith => __$SuccessCopyWithImpl<_Success>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LeaderboardState.success'))
    ..add(DiagnosticsProperty('sportTypes', sportTypes))..add(DiagnosticsProperty('categories', categories))..add(DiagnosticsProperty('regions', regions))..add(DiagnosticsProperty('podiums', podiums))..add(DiagnosticsProperty('periods', periods));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success&&const DeepCollectionEquality().equals(other._sportTypes, _sportTypes)&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._regions, _regions)&&const DeepCollectionEquality().equals(other._podiums, _podiums)&&const DeepCollectionEquality().equals(other._periods, _periods));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_sportTypes),const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_regions),const DeepCollectionEquality().hash(_podiums),const DeepCollectionEquality().hash(_periods));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LeaderboardState.success(sportTypes: $sportTypes, categories: $categories, regions: $regions, podiums: $podiums, periods: $periods)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<$Res> implements $LeaderboardStateCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) _then) = __$SuccessCopyWithImpl;
@useResult
$Res call({
 List<SportType> sportTypes, List<Category> categories, List<Region> regions, List<Podium> podiums, List<Periode> periods
});




}
/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success _self;
  final $Res Function(_Success) _then;

/// Create a copy of LeaderboardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sportTypes = null,Object? categories = null,Object? regions = null,Object? podiums = null,Object? periods = null,}) {
  return _then(_Success(
sportTypes: null == sportTypes ? _self._sportTypes : sportTypes // ignore: cast_nullable_to_non_nullable
as List<SportType>,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<Category>,regions: null == regions ? _self._regions : regions // ignore: cast_nullable_to_non_nullable
as List<Region>,podiums: null == podiums ? _self._podiums : podiums // ignore: cast_nullable_to_non_nullable
as List<Podium>,periods: null == periods ? _self._periods : periods // ignore: cast_nullable_to_non_nullable
as List<Periode>,
  ));
}


}

/// @nodoc


class _Failure with DiagnosticableTreeMixin implements LeaderboardState {
  const _Failure(this.error);
  

 final  String error;

/// Create a copy of LeaderboardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureCopyWith<_Failure> get copyWith => __$FailureCopyWithImpl<_Failure>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LeaderboardState.failure'))
    ..add(DiagnosticsProperty('error', error));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failure&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LeaderboardState.failure(error: $error)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $LeaderboardStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) = __$FailureCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class __$FailureCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

/// Create a copy of LeaderboardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_Failure(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
