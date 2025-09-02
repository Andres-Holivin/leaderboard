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
mixin _$FilterState {

 int get page; SportTypeModel? get sportType; CategoryModel? get category; RegionModel? get region; PeriodeModel? get periode; ParticipatedModel? get participated;
/// Create a copy of FilterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilterStateCopyWith<FilterState> get copyWith => _$FilterStateCopyWithImpl<FilterState>(this as FilterState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterState&&(identical(other.page, page) || other.page == page)&&(identical(other.sportType, sportType) || other.sportType == sportType)&&(identical(other.category, category) || other.category == category)&&(identical(other.region, region) || other.region == region)&&(identical(other.periode, periode) || other.periode == periode)&&(identical(other.participated, participated) || other.participated == participated));
}


@override
int get hashCode => Object.hash(runtimeType,page,sportType,category,region,periode,participated);

@override
String toString() {
  return 'FilterState(page: $page, sportType: $sportType, category: $category, region: $region, periode: $periode, participated: $participated)';
}


}

/// @nodoc
abstract mixin class $FilterStateCopyWith<$Res>  {
  factory $FilterStateCopyWith(FilterState value, $Res Function(FilterState) _then) = _$FilterStateCopyWithImpl;
@useResult
$Res call({
 int page, SportTypeModel? sportType, CategoryModel? category, RegionModel? region, PeriodeModel? periode, ParticipatedModel? participated
});


$SportTypeModelCopyWith<$Res>? get sportType;$CategoryModelCopyWith<$Res>? get category;$RegionModelCopyWith<$Res>? get region;$PeriodeModelCopyWith<$Res>? get periode;$ParticipatedModelCopyWith<$Res>? get participated;

}
/// @nodoc
class _$FilterStateCopyWithImpl<$Res>
    implements $FilterStateCopyWith<$Res> {
  _$FilterStateCopyWithImpl(this._self, this._then);

  final FilterState _self;
  final $Res Function(FilterState) _then;

/// Create a copy of FilterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? sportType = freezed,Object? category = freezed,Object? region = freezed,Object? periode = freezed,Object? participated = freezed,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,sportType: freezed == sportType ? _self.sportType : sportType // ignore: cast_nullable_to_non_nullable
as SportTypeModel?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryModel?,region: freezed == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as RegionModel?,periode: freezed == periode ? _self.periode : periode // ignore: cast_nullable_to_non_nullable
as PeriodeModel?,participated: freezed == participated ? _self.participated : participated // ignore: cast_nullable_to_non_nullable
as ParticipatedModel?,
  ));
}
/// Create a copy of FilterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SportTypeModelCopyWith<$Res>? get sportType {
    if (_self.sportType == null) {
    return null;
  }

  return $SportTypeModelCopyWith<$Res>(_self.sportType!, (value) {
    return _then(_self.copyWith(sportType: value));
  });
}/// Create a copy of FilterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryModelCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CategoryModelCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of FilterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegionModelCopyWith<$Res>? get region {
    if (_self.region == null) {
    return null;
  }

  return $RegionModelCopyWith<$Res>(_self.region!, (value) {
    return _then(_self.copyWith(region: value));
  });
}/// Create a copy of FilterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PeriodeModelCopyWith<$Res>? get periode {
    if (_self.periode == null) {
    return null;
  }

  return $PeriodeModelCopyWith<$Res>(_self.periode!, (value) {
    return _then(_self.copyWith(periode: value));
  });
}/// Create a copy of FilterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParticipatedModelCopyWith<$Res>? get participated {
    if (_self.participated == null) {
    return null;
  }

  return $ParticipatedModelCopyWith<$Res>(_self.participated!, (value) {
    return _then(_self.copyWith(participated: value));
  });
}
}


/// Adds pattern-matching-related methods to [FilterState].
extension FilterStatePatterns on FilterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FilterState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FilterState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FilterState value)  $default,){
final _that = this;
switch (_that) {
case _FilterState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FilterState value)?  $default,){
final _that = this;
switch (_that) {
case _FilterState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page,  SportTypeModel? sportType,  CategoryModel? category,  RegionModel? region,  PeriodeModel? periode,  ParticipatedModel? participated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FilterState() when $default != null:
return $default(_that.page,_that.sportType,_that.category,_that.region,_that.periode,_that.participated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page,  SportTypeModel? sportType,  CategoryModel? category,  RegionModel? region,  PeriodeModel? periode,  ParticipatedModel? participated)  $default,) {final _that = this;
switch (_that) {
case _FilterState():
return $default(_that.page,_that.sportType,_that.category,_that.region,_that.periode,_that.participated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page,  SportTypeModel? sportType,  CategoryModel? category,  RegionModel? region,  PeriodeModel? periode,  ParticipatedModel? participated)?  $default,) {final _that = this;
switch (_that) {
case _FilterState() when $default != null:
return $default(_that.page,_that.sportType,_that.category,_that.region,_that.periode,_that.participated);case _:
  return null;

}
}

}

/// @nodoc


class _FilterState implements FilterState {
  const _FilterState({this.page = 1, this.sportType, this.category, this.region, this.periode, this.participated});
  

@override@JsonKey() final  int page;
@override final  SportTypeModel? sportType;
@override final  CategoryModel? category;
@override final  RegionModel? region;
@override final  PeriodeModel? periode;
@override final  ParticipatedModel? participated;

/// Create a copy of FilterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilterStateCopyWith<_FilterState> get copyWith => __$FilterStateCopyWithImpl<_FilterState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FilterState&&(identical(other.page, page) || other.page == page)&&(identical(other.sportType, sportType) || other.sportType == sportType)&&(identical(other.category, category) || other.category == category)&&(identical(other.region, region) || other.region == region)&&(identical(other.periode, periode) || other.periode == periode)&&(identical(other.participated, participated) || other.participated == participated));
}


@override
int get hashCode => Object.hash(runtimeType,page,sportType,category,region,periode,participated);

@override
String toString() {
  return 'FilterState(page: $page, sportType: $sportType, category: $category, region: $region, periode: $periode, participated: $participated)';
}


}

/// @nodoc
abstract mixin class _$FilterStateCopyWith<$Res> implements $FilterStateCopyWith<$Res> {
  factory _$FilterStateCopyWith(_FilterState value, $Res Function(_FilterState) _then) = __$FilterStateCopyWithImpl;
@override @useResult
$Res call({
 int page, SportTypeModel? sportType, CategoryModel? category, RegionModel? region, PeriodeModel? periode, ParticipatedModel? participated
});


@override $SportTypeModelCopyWith<$Res>? get sportType;@override $CategoryModelCopyWith<$Res>? get category;@override $RegionModelCopyWith<$Res>? get region;@override $PeriodeModelCopyWith<$Res>? get periode;@override $ParticipatedModelCopyWith<$Res>? get participated;

}
/// @nodoc
class __$FilterStateCopyWithImpl<$Res>
    implements _$FilterStateCopyWith<$Res> {
  __$FilterStateCopyWithImpl(this._self, this._then);

  final _FilterState _self;
  final $Res Function(_FilterState) _then;

/// Create a copy of FilterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? sportType = freezed,Object? category = freezed,Object? region = freezed,Object? periode = freezed,Object? participated = freezed,}) {
  return _then(_FilterState(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,sportType: freezed == sportType ? _self.sportType : sportType // ignore: cast_nullable_to_non_nullable
as SportTypeModel?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryModel?,region: freezed == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as RegionModel?,periode: freezed == periode ? _self.periode : periode // ignore: cast_nullable_to_non_nullable
as PeriodeModel?,participated: freezed == participated ? _self.participated : participated // ignore: cast_nullable_to_non_nullable
as ParticipatedModel?,
  ));
}

/// Create a copy of FilterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SportTypeModelCopyWith<$Res>? get sportType {
    if (_self.sportType == null) {
    return null;
  }

  return $SportTypeModelCopyWith<$Res>(_self.sportType!, (value) {
    return _then(_self.copyWith(sportType: value));
  });
}/// Create a copy of FilterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryModelCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CategoryModelCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of FilterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegionModelCopyWith<$Res>? get region {
    if (_self.region == null) {
    return null;
  }

  return $RegionModelCopyWith<$Res>(_self.region!, (value) {
    return _then(_self.copyWith(region: value));
  });
}/// Create a copy of FilterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PeriodeModelCopyWith<$Res>? get periode {
    if (_self.periode == null) {
    return null;
  }

  return $PeriodeModelCopyWith<$Res>(_self.periode!, (value) {
    return _then(_self.copyWith(periode: value));
  });
}/// Create a copy of FilterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParticipatedModelCopyWith<$Res>? get participated {
    if (_self.participated == null) {
    return null;
  }

  return $ParticipatedModelCopyWith<$Res>(_self.participated!, (value) {
    return _then(_self.copyWith(participated: value));
  });
}
}

/// @nodoc
mixin _$LeaderboardState {

 List<SportTypeModel> get sportTypes; List<CategoryModel> get categories; List<RegionModel> get regions; List<LeaderboardModel> get podium; List<PeriodeModel> get periods; List<ParticipatedModel> get participated; FilterState get filter; FetchStatus get status; FetchStatus get loadMoreStatus; bool get showPodium;
/// Create a copy of LeaderboardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaderboardStateCopyWith<LeaderboardState> get copyWith => _$LeaderboardStateCopyWithImpl<LeaderboardState>(this as LeaderboardState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaderboardState&&const DeepCollectionEquality().equals(other.sportTypes, sportTypes)&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.regions, regions)&&const DeepCollectionEquality().equals(other.podium, podium)&&const DeepCollectionEquality().equals(other.periods, periods)&&const DeepCollectionEquality().equals(other.participated, participated)&&(identical(other.filter, filter) || other.filter == filter)&&(identical(other.status, status) || other.status == status)&&(identical(other.loadMoreStatus, loadMoreStatus) || other.loadMoreStatus == loadMoreStatus)&&(identical(other.showPodium, showPodium) || other.showPodium == showPodium));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(sportTypes),const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(regions),const DeepCollectionEquality().hash(podium),const DeepCollectionEquality().hash(periods),const DeepCollectionEquality().hash(participated),filter,status,loadMoreStatus,showPodium);

@override
String toString() {
  return 'LeaderboardState(sportTypes: $sportTypes, categories: $categories, regions: $regions, podium: $podium, periods: $periods, participated: $participated, filter: $filter, status: $status, loadMoreStatus: $loadMoreStatus, showPodium: $showPodium)';
}


}

/// @nodoc
abstract mixin class $LeaderboardStateCopyWith<$Res>  {
  factory $LeaderboardStateCopyWith(LeaderboardState value, $Res Function(LeaderboardState) _then) = _$LeaderboardStateCopyWithImpl;
@useResult
$Res call({
 List<SportTypeModel> sportTypes, List<CategoryModel> categories, List<RegionModel> regions, List<LeaderboardModel> podium, List<PeriodeModel> periods, List<ParticipatedModel> participated, FilterState filter, FetchStatus status, FetchStatus loadMoreStatus, bool showPodium
});


$FilterStateCopyWith<$Res> get filter;

}
/// @nodoc
class _$LeaderboardStateCopyWithImpl<$Res>
    implements $LeaderboardStateCopyWith<$Res> {
  _$LeaderboardStateCopyWithImpl(this._self, this._then);

  final LeaderboardState _self;
  final $Res Function(LeaderboardState) _then;

/// Create a copy of LeaderboardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sportTypes = null,Object? categories = null,Object? regions = null,Object? podium = null,Object? periods = null,Object? participated = null,Object? filter = null,Object? status = null,Object? loadMoreStatus = null,Object? showPodium = null,}) {
  return _then(_self.copyWith(
sportTypes: null == sportTypes ? _self.sportTypes : sportTypes // ignore: cast_nullable_to_non_nullable
as List<SportTypeModel>,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,regions: null == regions ? _self.regions : regions // ignore: cast_nullable_to_non_nullable
as List<RegionModel>,podium: null == podium ? _self.podium : podium // ignore: cast_nullable_to_non_nullable
as List<LeaderboardModel>,periods: null == periods ? _self.periods : periods // ignore: cast_nullable_to_non_nullable
as List<PeriodeModel>,participated: null == participated ? _self.participated : participated // ignore: cast_nullable_to_non_nullable
as List<ParticipatedModel>,filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as FilterState,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FetchStatus,loadMoreStatus: null == loadMoreStatus ? _self.loadMoreStatus : loadMoreStatus // ignore: cast_nullable_to_non_nullable
as FetchStatus,showPodium: null == showPodium ? _self.showPodium : showPodium // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of LeaderboardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FilterStateCopyWith<$Res> get filter {
  
  return $FilterStateCopyWith<$Res>(_self.filter, (value) {
    return _then(_self.copyWith(filter: value));
  });
}
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaderboardState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaderboardState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaderboardState value)  $default,){
final _that = this;
switch (_that) {
case _LeaderboardState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaderboardState value)?  $default,){
final _that = this;
switch (_that) {
case _LeaderboardState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SportTypeModel> sportTypes,  List<CategoryModel> categories,  List<RegionModel> regions,  List<LeaderboardModel> podium,  List<PeriodeModel> periods,  List<ParticipatedModel> participated,  FilterState filter,  FetchStatus status,  FetchStatus loadMoreStatus,  bool showPodium)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaderboardState() when $default != null:
return $default(_that.sportTypes,_that.categories,_that.regions,_that.podium,_that.periods,_that.participated,_that.filter,_that.status,_that.loadMoreStatus,_that.showPodium);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SportTypeModel> sportTypes,  List<CategoryModel> categories,  List<RegionModel> regions,  List<LeaderboardModel> podium,  List<PeriodeModel> periods,  List<ParticipatedModel> participated,  FilterState filter,  FetchStatus status,  FetchStatus loadMoreStatus,  bool showPodium)  $default,) {final _that = this;
switch (_that) {
case _LeaderboardState():
return $default(_that.sportTypes,_that.categories,_that.regions,_that.podium,_that.periods,_that.participated,_that.filter,_that.status,_that.loadMoreStatus,_that.showPodium);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SportTypeModel> sportTypes,  List<CategoryModel> categories,  List<RegionModel> regions,  List<LeaderboardModel> podium,  List<PeriodeModel> periods,  List<ParticipatedModel> participated,  FilterState filter,  FetchStatus status,  FetchStatus loadMoreStatus,  bool showPodium)?  $default,) {final _that = this;
switch (_that) {
case _LeaderboardState() when $default != null:
return $default(_that.sportTypes,_that.categories,_that.regions,_that.podium,_that.periods,_that.participated,_that.filter,_that.status,_that.loadMoreStatus,_that.showPodium);case _:
  return null;

}
}

}

/// @nodoc


class _LeaderboardState implements LeaderboardState {
  const _LeaderboardState({final  List<SportTypeModel> sportTypes = const [], final  List<CategoryModel> categories = const [], final  List<RegionModel> regions = const [], final  List<LeaderboardModel> podium = const [], final  List<PeriodeModel> periods = const [], final  List<ParticipatedModel> participated = const [], this.filter = const FilterState(), this.status = FetchStatus.initial, this.loadMoreStatus = FetchStatus.initial, this.showPodium = true}): _sportTypes = sportTypes,_categories = categories,_regions = regions,_podium = podium,_periods = periods,_participated = participated;
  

 final  List<SportTypeModel> _sportTypes;
@override@JsonKey() List<SportTypeModel> get sportTypes {
  if (_sportTypes is EqualUnmodifiableListView) return _sportTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sportTypes);
}

 final  List<CategoryModel> _categories;
@override@JsonKey() List<CategoryModel> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<RegionModel> _regions;
@override@JsonKey() List<RegionModel> get regions {
  if (_regions is EqualUnmodifiableListView) return _regions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_regions);
}

 final  List<LeaderboardModel> _podium;
@override@JsonKey() List<LeaderboardModel> get podium {
  if (_podium is EqualUnmodifiableListView) return _podium;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_podium);
}

 final  List<PeriodeModel> _periods;
@override@JsonKey() List<PeriodeModel> get periods {
  if (_periods is EqualUnmodifiableListView) return _periods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_periods);
}

 final  List<ParticipatedModel> _participated;
@override@JsonKey() List<ParticipatedModel> get participated {
  if (_participated is EqualUnmodifiableListView) return _participated;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_participated);
}

@override@JsonKey() final  FilterState filter;
@override@JsonKey() final  FetchStatus status;
@override@JsonKey() final  FetchStatus loadMoreStatus;
@override@JsonKey() final  bool showPodium;

/// Create a copy of LeaderboardState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaderboardStateCopyWith<_LeaderboardState> get copyWith => __$LeaderboardStateCopyWithImpl<_LeaderboardState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaderboardState&&const DeepCollectionEquality().equals(other._sportTypes, _sportTypes)&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._regions, _regions)&&const DeepCollectionEquality().equals(other._podium, _podium)&&const DeepCollectionEquality().equals(other._periods, _periods)&&const DeepCollectionEquality().equals(other._participated, _participated)&&(identical(other.filter, filter) || other.filter == filter)&&(identical(other.status, status) || other.status == status)&&(identical(other.loadMoreStatus, loadMoreStatus) || other.loadMoreStatus == loadMoreStatus)&&(identical(other.showPodium, showPodium) || other.showPodium == showPodium));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_sportTypes),const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_regions),const DeepCollectionEquality().hash(_podium),const DeepCollectionEquality().hash(_periods),const DeepCollectionEquality().hash(_participated),filter,status,loadMoreStatus,showPodium);

@override
String toString() {
  return 'LeaderboardState(sportTypes: $sportTypes, categories: $categories, regions: $regions, podium: $podium, periods: $periods, participated: $participated, filter: $filter, status: $status, loadMoreStatus: $loadMoreStatus, showPodium: $showPodium)';
}


}

/// @nodoc
abstract mixin class _$LeaderboardStateCopyWith<$Res> implements $LeaderboardStateCopyWith<$Res> {
  factory _$LeaderboardStateCopyWith(_LeaderboardState value, $Res Function(_LeaderboardState) _then) = __$LeaderboardStateCopyWithImpl;
@override @useResult
$Res call({
 List<SportTypeModel> sportTypes, List<CategoryModel> categories, List<RegionModel> regions, List<LeaderboardModel> podium, List<PeriodeModel> periods, List<ParticipatedModel> participated, FilterState filter, FetchStatus status, FetchStatus loadMoreStatus, bool showPodium
});


@override $FilterStateCopyWith<$Res> get filter;

}
/// @nodoc
class __$LeaderboardStateCopyWithImpl<$Res>
    implements _$LeaderboardStateCopyWith<$Res> {
  __$LeaderboardStateCopyWithImpl(this._self, this._then);

  final _LeaderboardState _self;
  final $Res Function(_LeaderboardState) _then;

/// Create a copy of LeaderboardState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sportTypes = null,Object? categories = null,Object? regions = null,Object? podium = null,Object? periods = null,Object? participated = null,Object? filter = null,Object? status = null,Object? loadMoreStatus = null,Object? showPodium = null,}) {
  return _then(_LeaderboardState(
sportTypes: null == sportTypes ? _self._sportTypes : sportTypes // ignore: cast_nullable_to_non_nullable
as List<SportTypeModel>,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,regions: null == regions ? _self._regions : regions // ignore: cast_nullable_to_non_nullable
as List<RegionModel>,podium: null == podium ? _self._podium : podium // ignore: cast_nullable_to_non_nullable
as List<LeaderboardModel>,periods: null == periods ? _self._periods : periods // ignore: cast_nullable_to_non_nullable
as List<PeriodeModel>,participated: null == participated ? _self._participated : participated // ignore: cast_nullable_to_non_nullable
as List<ParticipatedModel>,filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as FilterState,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FetchStatus,loadMoreStatus: null == loadMoreStatus ? _self.loadMoreStatus : loadMoreStatus // ignore: cast_nullable_to_non_nullable
as FetchStatus,showPodium: null == showPodium ? _self.showPodium : showPodium // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of LeaderboardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FilterStateCopyWith<$Res> get filter {
  
  return $FilterStateCopyWith<$Res>(_self.filter, (value) {
    return _then(_self.copyWith(filter: value));
  });
}
}

// dart format on
