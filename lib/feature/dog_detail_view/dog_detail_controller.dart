import 'package:dog_adoption/core/provider/snackbar_provider.dart';
import 'package:dog_adoption/core/services/dog_service.dart';
import 'package:dog_adoption/core/utils/enums/page_state/page_state_enum.dart';
import 'package:dog_adoption/core/widgets/snack_bar_widget.dart';
import 'package:dog_adoption/feature/dog_detail_view/model/dog_detail_state_model.dart';
import 'package:dog_adoption/feature/favorite_view/favorite_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final tempDogIdProvider = StateProvider<int?>((ref) {
  return null;
});
final dogDetailController =
    StateNotifierProvider.autoDispose<DogDetailController, DogDetailStateModel>(
        (ref) {
  ref.onDispose(() {});
  return DogDetailController(ref);
});

class DogDetailController extends StateNotifier<DogDetailStateModel> {
  DogDetailController(this.ref)
      : super(
          const DogDetailStateModel(),
        ) {
    getDog();
  }
  final Ref ref;

  Future<void> getDog() async {
    state = state.copyWith(pageState: PageStateEnum.LOADING);
    final response = await ref
        .read(dogService)
        .getDogWithId(ref.read(tempDogIdProvider.notifier).state ?? 0);
    if (response != null) {
      state = state.copyWith(dog: response);
      state = state.copyWith(pageState: PageStateEnum.SUCCESS);
    } else {
      state = state.copyWith(pageState: PageStateEnum.ERROR);
    }
  }

  Future<void> addFavorite() async {
    try {
      final response =
          await ref.read(favoriteService).addDogToFavorite(state.dog?.id ?? 0);

      if (response) {
        ref.read(snackBarProvider.notifier).showSnackBar(
            message: "You added to favorite succesfully",
            snackBarType: SnackBarType.success);
      } else {
        ref.read(snackBarProvider.notifier).showSnackBar(
            message: "Dog already in favorites ",
            snackBarType: SnackBarType.warning);
      }
    } catch (e) {
      ref.read(snackBarProvider.notifier).showSnackBar(
          message: "An error occurred", snackBarType: SnackBarType.error);
    }
  }
}
