import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';

@freezed
abstract class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    required String name,
    List<CategoryModel>? subCategory,
  }) = _CategoryModel;
}
