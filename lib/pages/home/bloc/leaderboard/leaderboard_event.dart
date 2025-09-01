import 'package:equatable/equatable.dart';
import 'package:leaderboard/data/category.dart';
import 'package:leaderboard/data/region.dart';
import 'package:leaderboard/data/sport_type.dart';

sealed class LeaderboardEvent extends Equatable {
  const LeaderboardEvent();
  @override
  List<Object?> get props => [];
}

class InitLeaderboard extends LeaderboardEvent {}
