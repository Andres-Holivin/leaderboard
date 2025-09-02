// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leaderboard_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LeaderboardEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LeaderboardEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaderboardEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LeaderboardEvent()';
}


}

/// @nodoc
class $LeaderboardEventCopyWith<$Res>  {
$LeaderboardEventCopyWith(LeaderboardEvent _, $Res Function(LeaderboardEvent) __);
}


/// Adds pattern-matching-related methods to [LeaderboardEvent].
extension LeaderboardEventPatterns on LeaderboardEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InitLeaderboard value)?  initLeaderboard,TResult Function( FetchLeaderboard value)?  fetchLeaderboard,TResult Function( HidePodium value)?  hidePodium,TResult Function( UpdateFilter value)?  updateFilter,TResult Function( RefreshLeaderboard value)?  refreshLeaderboard,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InitLeaderboard() when initLeaderboard != null:
return initLeaderboard(_that);case FetchLeaderboard() when fetchLeaderboard != null:
return fetchLeaderboard(_that);case HidePodium() when hidePodium != null:
return hidePodium(_that);case UpdateFilter() when updateFilter != null:
return updateFilter(_that);case RefreshLeaderboard() when refreshLeaderboard != null:
return refreshLeaderboard(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InitLeaderboard value)  initLeaderboard,required TResult Function( FetchLeaderboard value)  fetchLeaderboard,required TResult Function( HidePodium value)  hidePodium,required TResult Function( UpdateFilter value)  updateFilter,required TResult Function( RefreshLeaderboard value)  refreshLeaderboard,}){
final _that = this;
switch (_that) {
case InitLeaderboard():
return initLeaderboard(_that);case FetchLeaderboard():
return fetchLeaderboard(_that);case HidePodium():
return hidePodium(_that);case UpdateFilter():
return updateFilter(_that);case RefreshLeaderboard():
return refreshLeaderboard(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InitLeaderboard value)?  initLeaderboard,TResult? Function( FetchLeaderboard value)?  fetchLeaderboard,TResult? Function( HidePodium value)?  hidePodium,TResult? Function( UpdateFilter value)?  updateFilter,TResult? Function( RefreshLeaderboard value)?  refreshLeaderboard,}){
final _that = this;
switch (_that) {
case InitLeaderboard() when initLeaderboard != null:
return initLeaderboard(_that);case FetchLeaderboard() when fetchLeaderboard != null:
return fetchLeaderboard(_that);case HidePodium() when hidePodium != null:
return hidePodium(_that);case UpdateFilter() when updateFilter != null:
return updateFilter(_that);case RefreshLeaderboard() when refreshLeaderboard != null:
return refreshLeaderboard(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initLeaderboard,TResult Function()?  fetchLeaderboard,TResult Function( bool hide)?  hidePodium,TResult Function( FilterState filter)?  updateFilter,TResult Function()?  refreshLeaderboard,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InitLeaderboard() when initLeaderboard != null:
return initLeaderboard();case FetchLeaderboard() when fetchLeaderboard != null:
return fetchLeaderboard();case HidePodium() when hidePodium != null:
return hidePodium(_that.hide);case UpdateFilter() when updateFilter != null:
return updateFilter(_that.filter);case RefreshLeaderboard() when refreshLeaderboard != null:
return refreshLeaderboard();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initLeaderboard,required TResult Function()  fetchLeaderboard,required TResult Function( bool hide)  hidePodium,required TResult Function( FilterState filter)  updateFilter,required TResult Function()  refreshLeaderboard,}) {final _that = this;
switch (_that) {
case InitLeaderboard():
return initLeaderboard();case FetchLeaderboard():
return fetchLeaderboard();case HidePodium():
return hidePodium(_that.hide);case UpdateFilter():
return updateFilter(_that.filter);case RefreshLeaderboard():
return refreshLeaderboard();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initLeaderboard,TResult? Function()?  fetchLeaderboard,TResult? Function( bool hide)?  hidePodium,TResult? Function( FilterState filter)?  updateFilter,TResult? Function()?  refreshLeaderboard,}) {final _that = this;
switch (_that) {
case InitLeaderboard() when initLeaderboard != null:
return initLeaderboard();case FetchLeaderboard() when fetchLeaderboard != null:
return fetchLeaderboard();case HidePodium() when hidePodium != null:
return hidePodium(_that.hide);case UpdateFilter() when updateFilter != null:
return updateFilter(_that.filter);case RefreshLeaderboard() when refreshLeaderboard != null:
return refreshLeaderboard();case _:
  return null;

}
}

}

/// @nodoc


class InitLeaderboard with DiagnosticableTreeMixin implements LeaderboardEvent {
  const InitLeaderboard();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LeaderboardEvent.initLeaderboard'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitLeaderboard);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LeaderboardEvent.initLeaderboard()';
}


}




/// @nodoc


class FetchLeaderboard with DiagnosticableTreeMixin implements LeaderboardEvent {
  const FetchLeaderboard();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LeaderboardEvent.fetchLeaderboard'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchLeaderboard);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LeaderboardEvent.fetchLeaderboard()';
}


}




/// @nodoc


class HidePodium with DiagnosticableTreeMixin implements LeaderboardEvent {
  const HidePodium({required this.hide});
  

 final  bool hide;

/// Create a copy of LeaderboardEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HidePodiumCopyWith<HidePodium> get copyWith => _$HidePodiumCopyWithImpl<HidePodium>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LeaderboardEvent.hidePodium'))
    ..add(DiagnosticsProperty('hide', hide));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HidePodium&&(identical(other.hide, hide) || other.hide == hide));
}


@override
int get hashCode => Object.hash(runtimeType,hide);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LeaderboardEvent.hidePodium(hide: $hide)';
}


}

/// @nodoc
abstract mixin class $HidePodiumCopyWith<$Res> implements $LeaderboardEventCopyWith<$Res> {
  factory $HidePodiumCopyWith(HidePodium value, $Res Function(HidePodium) _then) = _$HidePodiumCopyWithImpl;
@useResult
$Res call({
 bool hide
});




}
/// @nodoc
class _$HidePodiumCopyWithImpl<$Res>
    implements $HidePodiumCopyWith<$Res> {
  _$HidePodiumCopyWithImpl(this._self, this._then);

  final HidePodium _self;
  final $Res Function(HidePodium) _then;

/// Create a copy of LeaderboardEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? hide = null,}) {
  return _then(HidePodium(
hide: null == hide ? _self.hide : hide // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class UpdateFilter with DiagnosticableTreeMixin implements LeaderboardEvent {
  const UpdateFilter({required this.filter});
  

 final  FilterState filter;

/// Create a copy of LeaderboardEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateFilterCopyWith<UpdateFilter> get copyWith => _$UpdateFilterCopyWithImpl<UpdateFilter>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LeaderboardEvent.updateFilter'))
    ..add(DiagnosticsProperty('filter', filter));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateFilter&&(identical(other.filter, filter) || other.filter == filter));
}


@override
int get hashCode => Object.hash(runtimeType,filter);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LeaderboardEvent.updateFilter(filter: $filter)';
}


}

/// @nodoc
abstract mixin class $UpdateFilterCopyWith<$Res> implements $LeaderboardEventCopyWith<$Res> {
  factory $UpdateFilterCopyWith(UpdateFilter value, $Res Function(UpdateFilter) _then) = _$UpdateFilterCopyWithImpl;
@useResult
$Res call({
 FilterState filter
});


$FilterStateCopyWith<$Res> get filter;

}
/// @nodoc
class _$UpdateFilterCopyWithImpl<$Res>
    implements $UpdateFilterCopyWith<$Res> {
  _$UpdateFilterCopyWithImpl(this._self, this._then);

  final UpdateFilter _self;
  final $Res Function(UpdateFilter) _then;

/// Create a copy of LeaderboardEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? filter = null,}) {
  return _then(UpdateFilter(
filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as FilterState,
  ));
}

/// Create a copy of LeaderboardEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FilterStateCopyWith<$Res> get filter {
  
  return $FilterStateCopyWith<$Res>(_self.filter, (value) {
    return _then(_self.copyWith(filter: value));
  });
}
}

/// @nodoc


class RefreshLeaderboard with DiagnosticableTreeMixin implements LeaderboardEvent {
  const RefreshLeaderboard();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LeaderboardEvent.refreshLeaderboard'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshLeaderboard);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LeaderboardEvent.refreshLeaderboard()';
}


}




// dart format on
