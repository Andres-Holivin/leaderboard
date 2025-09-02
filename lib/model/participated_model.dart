import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:leaderboard/model/category_model.dart';
import 'package:leaderboard/model/region_model.dart';
import 'package:leaderboard/model/sport_type_model.dart';

part 'participated_model.freezed.dart';

@freezed
abstract class ParticipatedModel with _$ParticipatedModel {
  const factory ParticipatedModel({
    required int id,
    required String name,
    required String username,
    required int rank,
    required int point,
    required CategoryModel category,
    required SportTypeModel sportType,
    required RegionModel region,
    String? partner,
  }) = _ParticipatedModel;
}
