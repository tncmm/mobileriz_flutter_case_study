import 'package:dog_adoption/core/model/dog_model/dog_model.dart';
import 'package:dog_adoption/core/utils/enums/page_state/page_state_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dog_detail_state_model.freezed.dart';

@immutable
@freezed
class DogDetailStateModel with _$DogDetailStateModel {
  const factory DogDetailStateModel(
      {@Default(PageStateEnum.START) PageStateEnum pageState,
      @Default(null) DogModel? dog}) = _DogDetailStateModel;
}
