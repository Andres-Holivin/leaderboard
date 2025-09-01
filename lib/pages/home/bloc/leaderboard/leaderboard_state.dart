import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart' hide Category;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:leaderboard/data/category.dart';
import 'package:leaderboard/data/periode.dart';
import 'package:leaderboard/data/podium.dart';
import 'package:leaderboard/data/region.dart';
import 'package:leaderboard/data/sport_type.dart';
part 'leaderboard_state.freezed.dart';

@freezed
abstract class LeaderboardState with _$LeaderboardState {
  const factory LeaderboardState.initial() = _Initial;
  const factory LeaderboardState.loading() = _Loading;
  const factory LeaderboardState.success({
    required List<SportType> sportTypes,
    required List<Category> categories,
    required List<Region> regions,
    required List<Podium> podiums,
    required List<Periode> periods,
  }) = _Success;
  const factory LeaderboardState.failure(String error) = _Failure;
}
