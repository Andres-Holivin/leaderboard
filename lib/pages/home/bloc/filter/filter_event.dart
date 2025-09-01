import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:leaderboard/data/region.dart';
import 'package:leaderboard/data/sport_type.dart';

sealed class FilterEvent extends Equatable {
  const FilterEvent();
  @override
  List<Object?> get props => [];
}

class UpdateSportType extends FilterEvent {
  final SportType? sportType;

  const UpdateSportType({this.sportType});
}

class UpdateCategory extends FilterEvent {
  final Category? category;

  const UpdateCategory({this.category});
}

class UpdateRegion extends FilterEvent {
  final Region? region;

  const UpdateRegion({this.region});
}
