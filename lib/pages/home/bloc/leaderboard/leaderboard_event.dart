import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:leaderboard/pages/home/bloc/leaderboard/leaderboard_state.dart';
part 'leaderboard_event.freezed.dart';

@freezed
abstract class LeaderboardEvent with _$LeaderboardEvent {
  const factory LeaderboardEvent.initLeaderboard() = InitLeaderboard;
  const factory LeaderboardEvent.fetchLeaderboard() = FetchLeaderboard;

  const factory LeaderboardEvent.hidePodium({required bool hide}) = HidePodium;

  const factory LeaderboardEvent.updateFilter({required FilterState filter}) =
      UpdateFilter;

  const factory LeaderboardEvent.refreshLeaderboard() = RefreshLeaderboard;
}
