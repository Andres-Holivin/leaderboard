import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:leaderboard/data/category.dart';
import 'package:leaderboard/data/region.dart';
import 'package:leaderboard/data/sport_type.dart';
part 'filter_state.freezed.dart';

@freezed
abstract class LeaderboardFilterState with _$LeaderboardFilterState {
  const factory LeaderboardFilterState({
    SportType? sportType,
    Category? category,
    Region? region,
  }) = _LeaderboardFilterState;
}
