import 'package:freezed_annotation/freezed_annotation.dart';

part 'sport_type_model.freezed.dart';

@freezed
abstract class SportTypeModel with _$SportTypeModel {
  const factory SportTypeModel({required String name, required String icon}) =
      _SportTypeModel;
}
