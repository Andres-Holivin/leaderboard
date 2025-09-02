import 'package:freezed_annotation/freezed_annotation.dart';

part 'region_model.freezed.dart';

@freezed
abstract class RegionModel with _$RegionModel {
  const factory RegionModel({required String name}) = _RegionModel;
}
