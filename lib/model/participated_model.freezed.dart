// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'participated_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ParticipatedModel {

 int get id; String get name; String get username; int get rank; int get point; CategoryModel get category; SportTypeModel get sportType; RegionModel get region; String? get partner;
/// Create a copy of ParticipatedModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParticipatedModelCopyWith<ParticipatedModel> get copyWith => _$ParticipatedModelCopyWithImpl<ParticipatedModel>(this as ParticipatedModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParticipatedModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.username, username) || other.username == username)&&(identical(other.rank, rank) || other.rank == rank)&&(identical(other.point, point) || other.point == point)&&(identical(other.category, category) || other.category == category)&&(identical(other.sportType, sportType) || other.sportType == sportType)&&(identical(other.region, region) || other.region == region)&&(identical(other.partner, partner) || other.partner == partner));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,username,rank,point,category,sportType,region,partner);

@override
String toString() {
  return 'ParticipatedModel(id: $id, name: $name, username: $username, rank: $rank, point: $point, category: $category, sportType: $sportType, region: $region, partner: $partner)';
}


}

/// @nodoc
abstract mixin class $ParticipatedModelCopyWith<$Res>  {
  factory $ParticipatedModelCopyWith(ParticipatedModel value, $Res Function(ParticipatedModel) _then) = _$ParticipatedModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String username, int rank, int point, CategoryModel category, SportTypeModel sportType, RegionModel region, String? partner
});


$CategoryModelCopyWith<$Res> get category;$SportTypeModelCopyWith<$Res> get sportType;$RegionModelCopyWith<$Res> get region;

}
/// @nodoc
class _$ParticipatedModelCopyWithImpl<$Res>
    implements $ParticipatedModelCopyWith<$Res> {
  _$ParticipatedModelCopyWithImpl(this._self, this._then);

  final ParticipatedModel _self;
  final $Res Function(ParticipatedModel) _then;

/// Create a copy of ParticipatedModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? username = null,Object? rank = null,Object? point = null,Object? category = null,Object? sportType = null,Object? region = null,Object? partner = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int,point: null == point ? _self.point : point // ignore: cast_nullable_to_non_nullable
as int,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryModel,sportType: null == sportType ? _self.sportType : sportType // ignore: cast_nullable_to_non_nullable
as SportTypeModel,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as RegionModel,partner: freezed == partner ? _self.partner : partner // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ParticipatedModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryModelCopyWith<$Res> get category {
  
  return $CategoryModelCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of ParticipatedModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SportTypeModelCopyWith<$Res> get sportType {
  
  return $SportTypeModelCopyWith<$Res>(_self.sportType, (value) {
    return _then(_self.copyWith(sportType: value));
  });
}/// Create a copy of ParticipatedModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegionModelCopyWith<$Res> get region {
  
  return $RegionModelCopyWith<$Res>(_self.region, (value) {
    return _then(_self.copyWith(region: value));
  });
}
}


/// Adds pattern-matching-related methods to [ParticipatedModel].
extension ParticipatedModelPatterns on ParticipatedModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParticipatedModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParticipatedModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParticipatedModel value)  $default,){
final _that = this;
switch (_that) {
case _ParticipatedModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParticipatedModel value)?  $default,){
final _that = this;
switch (_that) {
case _ParticipatedModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String username,  int rank,  int point,  CategoryModel category,  SportTypeModel sportType,  RegionModel region,  String? partner)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParticipatedModel() when $default != null:
return $default(_that.id,_that.name,_that.username,_that.rank,_that.point,_that.category,_that.sportType,_that.region,_that.partner);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String username,  int rank,  int point,  CategoryModel category,  SportTypeModel sportType,  RegionModel region,  String? partner)  $default,) {final _that = this;
switch (_that) {
case _ParticipatedModel():
return $default(_that.id,_that.name,_that.username,_that.rank,_that.point,_that.category,_that.sportType,_that.region,_that.partner);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String username,  int rank,  int point,  CategoryModel category,  SportTypeModel sportType,  RegionModel region,  String? partner)?  $default,) {final _that = this;
switch (_that) {
case _ParticipatedModel() when $default != null:
return $default(_that.id,_that.name,_that.username,_that.rank,_that.point,_that.category,_that.sportType,_that.region,_that.partner);case _:
  return null;

}
}

}

/// @nodoc


class _ParticipatedModel implements ParticipatedModel {
  const _ParticipatedModel({required this.id, required this.name, required this.username, required this.rank, required this.point, required this.category, required this.sportType, required this.region, this.partner});
  

@override final  int id;
@override final  String name;
@override final  String username;
@override final  int rank;
@override final  int point;
@override final  CategoryModel category;
@override final  SportTypeModel sportType;
@override final  RegionModel region;
@override final  String? partner;

/// Create a copy of ParticipatedModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParticipatedModelCopyWith<_ParticipatedModel> get copyWith => __$ParticipatedModelCopyWithImpl<_ParticipatedModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParticipatedModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.username, username) || other.username == username)&&(identical(other.rank, rank) || other.rank == rank)&&(identical(other.point, point) || other.point == point)&&(identical(other.category, category) || other.category == category)&&(identical(other.sportType, sportType) || other.sportType == sportType)&&(identical(other.region, region) || other.region == region)&&(identical(other.partner, partner) || other.partner == partner));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,username,rank,point,category,sportType,region,partner);

@override
String toString() {
  return 'ParticipatedModel(id: $id, name: $name, username: $username, rank: $rank, point: $point, category: $category, sportType: $sportType, region: $region, partner: $partner)';
}


}

/// @nodoc
abstract mixin class _$ParticipatedModelCopyWith<$Res> implements $ParticipatedModelCopyWith<$Res> {
  factory _$ParticipatedModelCopyWith(_ParticipatedModel value, $Res Function(_ParticipatedModel) _then) = __$ParticipatedModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String username, int rank, int point, CategoryModel category, SportTypeModel sportType, RegionModel region, String? partner
});


@override $CategoryModelCopyWith<$Res> get category;@override $SportTypeModelCopyWith<$Res> get sportType;@override $RegionModelCopyWith<$Res> get region;

}
/// @nodoc
class __$ParticipatedModelCopyWithImpl<$Res>
    implements _$ParticipatedModelCopyWith<$Res> {
  __$ParticipatedModelCopyWithImpl(this._self, this._then);

  final _ParticipatedModel _self;
  final $Res Function(_ParticipatedModel) _then;

/// Create a copy of ParticipatedModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? username = null,Object? rank = null,Object? point = null,Object? category = null,Object? sportType = null,Object? region = null,Object? partner = freezed,}) {
  return _then(_ParticipatedModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int,point: null == point ? _self.point : point // ignore: cast_nullable_to_non_nullable
as int,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryModel,sportType: null == sportType ? _self.sportType : sportType // ignore: cast_nullable_to_non_nullable
as SportTypeModel,region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as RegionModel,partner: freezed == partner ? _self.partner : partner // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ParticipatedModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryModelCopyWith<$Res> get category {
  
  return $CategoryModelCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of ParticipatedModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SportTypeModelCopyWith<$Res> get sportType {
  
  return $SportTypeModelCopyWith<$Res>(_self.sportType, (value) {
    return _then(_self.copyWith(sportType: value));
  });
}/// Create a copy of ParticipatedModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegionModelCopyWith<$Res> get region {
  
  return $RegionModelCopyWith<$Res>(_self.region, (value) {
    return _then(_self.copyWith(region: value));
  });
}
}

// dart format on
