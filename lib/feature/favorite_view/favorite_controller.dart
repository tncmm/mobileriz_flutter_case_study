import 'package:dog_adoption/core/utils/enums/page_state/page_state_enum.dart';
import 'package:dog_adoption/feature/favorite_view/favorite_service.dart';
import 'package:dog_adoption/feature/favorite_view/model/favorite_state_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final favoriteController =
    StateNotifierProvider.autoDispose<FavoriteController, FavoriteStateModel>(
        (ref) {
  ref.onDispose(() {});
  return FavoriteController(ref);
});

class FavoriteController extends StateNotifier<FavoriteStateModel> {
  FavoriteController(this.ref)
      : super(
          const FavoriteStateModel(),
        ) {
    getFavoriteDogs();
  }
  final Ref ref;

  Future<void> getFavoriteDogs() async {
    state = state.copyWith(pageState: PageStateEnum.LOADING);
    final response = await ref.read(favoriteService).getAllFavoriteDogs();
    if (response != null && response.isNotEmpty) {
      state = state.copyWith(dogs: response);
      state = state.copyWith(pageState: PageStateEnum.SUCCESS);
    } else if (response != null && response.isEmpty) {
      state = state.copyWith(pageState: PageStateEnum.EMPTY);
    } else {
      state = state.copyWith(pageState: PageStateEnum.ERROR);
    }
  }
}
