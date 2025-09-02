import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:leaderboard/model/category_model.dart';
import 'package:leaderboard/model/region_model.dart';
import 'package:leaderboard/model/sport_type_model.dart';
part 'leaderboard_model.freezed.dart';

@freezed
abstract class LeaderboardModel with _$LeaderboardModel {
  const factory LeaderboardModel({
    required int id,
    required String name,
    required String username,
    required int point,
    required CategoryModel? category,
    required SportTypeModel? sportType,
    required RegionModel? region,
  }) = _LeaderboardModel;
}
