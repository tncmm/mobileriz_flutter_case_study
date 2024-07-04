import 'package:freezed_annotation/freezed_annotation.dart';

part 'dog_model.freezed.dart';
part 'dog_model.g.dart';

@freezed
class DogModel with _$DogModel {
  const factory DogModel({
    required int id,
    required String name,
    required int breedid,
    required int age,
    required String gender,
    required String description,
    required String size,
  }) = _DogModel;

  factory DogModel.fromJson(Map<String, dynamic> json) =>
      _$DogModelFromJson(json);
}
