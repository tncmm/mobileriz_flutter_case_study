import 'package:freezed_annotation/freezed_annotation.dart';

part 'breed_model.freezed.dart';
part 'breed_model.g.dart';

@freezed
class BreedModel with _$BreedModel {
  const factory BreedModel({
    @Default(1) int id,
    @Default("") String name,
  }) = _BreedModel;

  factory BreedModel.fromJson(Map<String, dynamic> json) =>
      _$BreedModelFromJson(json);
}
