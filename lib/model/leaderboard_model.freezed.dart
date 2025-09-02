// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leaderboard_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LeaderboardModel implements DiagnosticableTreeMixin {

 int get id; String get name; String get username; int get point; CategoryModel? get category; SportTypeModel? get sportType; RegionModel? get region;
/// Create a copy of LeaderboardModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaderboardModelCopyWith<LeaderboardModel> get copyWith => _$LeaderboardModelCopyWithImpl<LeaderboardModel>(this as LeaderboardModel, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LeaderboardModel'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('username', username))..add(DiagnosticsProperty('point', point))..add(DiagnosticsProperty('category', category))..add(DiagnosticsProperty('sportType', sportType))..add(DiagnosticsProperty('region', region));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaderboardModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.username, username) || other.username == username)&&(identical(other.point, point) || other.point == point)&&(identical(other.category, category) || other.category == category)&&(identical(other.sportType, sportType) || other.sportType == sportType)&&(identical(other.region, region) || other.region == region));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,username,point,category,sportType,region);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LeaderboardModel(id: $id, name: $name, username: $username, point: $point, category: $category, sportType: $sportType, region: $region)';
}


}

/// @nodoc
abstract mixin class $LeaderboardModelCopyWith<$Res>  {
  factory $LeaderboardModelCopyWith(LeaderboardModel value, $Res Function(LeaderboardModel) _then) = _$LeaderboardModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String username, int point, CategoryModel? category, SportTypeModel? sportType, RegionModel? region
});


$CategoryModelCopyWith<$Res>? get category;$SportTypeModelCopyWith<$Res>? get sportType;$RegionModelCopyWith<$Res>? get region;

}
/// @nodoc
class _$LeaderboardModelCopyWithImpl<$Res>
    implements $LeaderboardModelCopyWith<$Res> {
  _$LeaderboardModelCopyWithImpl(this._self, this._then);

  final LeaderboardModel _self;
  final $Res Function(LeaderboardModel) _then;

/// Create a copy of LeaderboardModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? username = null,Object? point = null,Object? category = freezed,Object? sportType = freezed,Object? region = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,point: null == point ? _self.point : point // ignore: cast_nullable_to_non_nullable
as int,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryModel?,sportType: freezed == sportType ? _self.sportType : sportType // ignore: cast_nullable_to_non_nullable
as SportTypeModel?,region: freezed == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as RegionModel?,
  ));
}
/// Create a copy of LeaderboardModel
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
}/// Create a copy of LeaderboardModel
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
}/// Create a copy of LeaderboardModel
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
}
}


/// Adds pattern-matching-related methods to [LeaderboardModel].
extension LeaderboardModelPatterns on LeaderboardModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaderboardModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaderboardModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaderboardModel value)  $default,){
final _that = this;
switch (_that) {
case _LeaderboardModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaderboardModel value)?  $default,){
final _that = this;
switch (_that) {
case _LeaderboardModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String username,  int point,  CategoryModel? category,  SportTypeModel? sportType,  RegionModel? region)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaderboardModel() when $default != null:
return $default(_that.id,_that.name,_that.username,_that.point,_that.category,_that.sportType,_that.region);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String username,  int point,  CategoryModel? category,  SportTypeModel? sportType,  RegionModel? region)  $default,) {final _that = this;
switch (_that) {
case _LeaderboardModel():
return $default(_that.id,_that.name,_that.username,_that.point,_that.category,_that.sportType,_that.region);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String username,  int point,  CategoryModel? category,  SportTypeModel? sportType,  RegionModel? region)?  $default,) {final _that = this;
switch (_that) {
case _LeaderboardModel() when $default != null:
return $default(_that.id,_that.name,_that.username,_that.point,_that.category,_that.sportType,_that.region);case _:
  return null;

}
}

}

/// @nodoc


class _LeaderboardModel with DiagnosticableTreeMixin implements LeaderboardModel {
  const _LeaderboardModel({required this.id, required this.name, required this.username, required this.point, required this.category, required this.sportType, required this.region});
  

@override final  int id;
@override final  String name;
@override final  String username;
@override final  int point;
@override final  CategoryModel? category;
@override final  SportTypeModel? sportType;
@override final  RegionModel? region;

/// Create a copy of LeaderboardModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaderboardModelCopyWith<_LeaderboardModel> get copyWith => __$LeaderboardModelCopyWithImpl<_LeaderboardModel>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'LeaderboardModel'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('username', username))..add(DiagnosticsProperty('point', point))..add(DiagnosticsProperty('category', category))..add(DiagnosticsProperty('sportType', sportType))..add(DiagnosticsProperty('region', region));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaderboardModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.username, username) || other.username == username)&&(identical(other.point, point) || other.point == point)&&(identical(other.category, category) || other.category == category)&&(identical(other.sportType, sportType) || other.sportType == sportType)&&(identical(other.region, region) || other.region == region));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,username,point,category,sportType,region);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'LeaderboardModel(id: $id, name: $name, username: $username, point: $point, category: $category, sportType: $sportType, region: $region)';
}


}

/// @nodoc
abstract mixin class _$LeaderboardModelCopyWith<$Res> implements $LeaderboardModelCopyWith<$Res> {
  factory _$LeaderboardModelCopyWith(_LeaderboardModel value, $Res Function(_LeaderboardModel) _then) = __$LeaderboardModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String username, int point, CategoryModel? category, SportTypeModel? sportType, RegionModel? region
});


@override $CategoryModelCopyWith<$Res>? get category;@override $SportTypeModelCopyWith<$Res>? get sportType;@override $RegionModelCopyWith<$Res>? get region;

}
/// @nodoc
class __$LeaderboardModelCopyWithImpl<$Res>
    implements _$LeaderboardModelCopyWith<$Res> {
  __$LeaderboardModelCopyWithImpl(this._self, this._then);

  final _LeaderboardModel _self;
  final $Res Function(_LeaderboardModel) _then;

/// Create a copy of LeaderboardModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? username = null,Object? point = null,Object? category = freezed,Object? sportType = freezed,Object? region = freezed,}) {
  return _then(_LeaderboardModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,point: null == point ? _self.point : point // ignore: cast_nullable_to_non_nullable
as int,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryModel?,sportType: freezed == sportType ? _self.sportType : sportType // ignore: cast_nullable_to_non_nullable
as SportTypeModel?,region: freezed == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as RegionModel?,
  ));
}

/// Create a copy of LeaderboardModel
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
}/// Create a copy of LeaderboardModel
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
}/// Create a copy of LeaderboardModel
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
}
}

// dart format on
