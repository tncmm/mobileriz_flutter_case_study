import 'package:dog_adoption/core/model/dog_model/dog_model.dart';
import 'package:dog_adoption/core/utils/enums/page_state/page_state_enum.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/model/breed_model/breed_model.dart';

part 'home_view_state_model.freezed.dart';

@immutable
@freezed
class HomeViewStateModel with _$HomeViewStateModel {
  const factory HomeViewStateModel(
      {required TextEditingController searchController,
      @Default(null) BreedModel? selectedBreed,
      @Default(null) int? selectedAge,
      @Default(PageStateEnum.START) PageStateEnum pageState,
      @Default([]) List<DogModel> dogs}) = _HomeViewStateModel;
}
