import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:leaderboard/model/category_model.dart';
import 'package:leaderboard/model/participated_model.dart';
import 'package:leaderboard/model/periode_model.dart';
import 'package:leaderboard/model/region_model.dart';
import 'package:leaderboard/model/sport_type_model.dart';
import 'package:leaderboard/model/leaderboard_model.dart';
part 'leaderboard_state.freezed.dart';

enum FetchStatus { initial, loading, success, failure }

@freezed
abstract class FilterState with _$FilterState {
  const factory FilterState({
    @Default(1) int page,
    SportTypeModel? sportType,
    CategoryModel? category,
    RegionModel? region,
    PeriodeModel? periode,
    ParticipatedModel? participated,
  }) = _FilterState;
}

@freezed
abstract class LeaderboardState with _$LeaderboardState {
  const factory LeaderboardState({
    @Default([]) List<SportTypeModel> sportTypes,
    @Default([]) List<CategoryModel> categories,
    @Default([]) List<RegionModel> regions,
    @Default([]) List<LeaderboardModel> podium,
    @Default([]) List<PeriodeModel> periods,
    @Default([]) List<ParticipatedModel> participated,
    @Default(FilterState()) FilterState filter,
    @Default(FetchStatus.initial) FetchStatus status,
    @Default(FetchStatus.initial) FetchStatus loadMoreStatus,
    @Default(true) bool showPodium,
  }) = _LeaderboardState;
}
