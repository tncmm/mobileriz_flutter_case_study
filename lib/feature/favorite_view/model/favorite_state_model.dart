import 'package:dog_adoption/core/model/dog_model/dog_model.dart';
import 'package:dog_adoption/core/utils/enums/page_state/page_state_enum.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_state_model.freezed.dart';

@immutable
@freezed
class FavoriteStateModel with _$FavoriteStateModel {
  const factory FavoriteStateModel(
      {@Default(PageStateEnum.START) PageStateEnum pageState,
      @Default([]) List<DogModel> dogs}) = _FavoriteStateModel;
}
