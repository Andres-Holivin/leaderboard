import 'package:freezed_annotation/freezed_annotation.dart';

part 'periode_model.freezed.dart';

@freezed
abstract class PeriodeModel with _$PeriodeModel {
  const factory PeriodeModel({
    required String name,
    required String period,
    @Default(false) bool isCurrent,
  }) = _PeriodeModel;
}
