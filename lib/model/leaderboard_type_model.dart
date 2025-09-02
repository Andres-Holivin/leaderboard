import 'package:freezed_annotation/freezed_annotation.dart';

part 'leaderboard_type_model.freezed.dart';

@freezed
abstract class LeaderboardTypeModel with _$LeaderboardTypeModel {
  const factory LeaderboardTypeModel({
    required String name,
    required String icon,
  }) = _LeaderboardTypeModel;
}
