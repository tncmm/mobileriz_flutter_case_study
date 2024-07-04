import 'package:dog_adoption/core/extension/context_extension.dart';
import 'package:dog_adoption/core/model/breed_model/breed_model.dart';
import 'package:dog_adoption/core/provider/breed_provider.dart';
import 'package:dog_adoption/core/services/dog_service.dart';
import 'package:dog_adoption/core/utils/enums/page_state/page_state_enum.dart';
import 'package:dog_adoption/feature/home_view/model/home_view_state_model.dart';
import 'package:dog_adoption/feature/home_view/widget/filter_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeViewController =
    StateNotifierProvider<HomeViewController, HomeViewStateModel>((ref) {
  ref.onDispose(() {});
  return HomeViewController(ref);
});

class HomeViewController extends StateNotifier<HomeViewStateModel> {
  HomeViewController(this.ref)
      : super(
          HomeViewStateModel(
            searchController: TextEditingController(),
          ),
        ) {
    getDogs();
    ref.read(breedProvider);
  }
  final Ref ref;
  void reRenderPage() {
    state = state.copyWith();
  }

  Future<void> getDogs() async {
    state = state.copyWith(pageState: PageStateEnum.LOADING);
    final response = await ref.read(dogService).getAllDogs(
          age: state.selectedAge,
          breed: state.selectedBreed?.name,
        );
    if (response != null && response.isNotEmpty) {
      state = state.copyWith(dogs: response);
      state = state.copyWith(pageState: PageStateEnum.SUCCESS);
    } else if (response != null && response.isEmpty) {
      state = state.copyWith(pageState: PageStateEnum.EMPTY);
    } else {
      state = state.copyWith(pageState: PageStateEnum.ERROR);
    }
  }

  Future<void> searchDog() async {
    state = state.copyWith(pageState: PageStateEnum.LOADING);
    state = state.copyWith(dogs: []);
    final response =
        await ref.read(dogService).searchDog(state.searchController.text);
    if (response != null && response.isNotEmpty) {
      state = state.copyWith(dogs: response);
      state = state.copyWith(pageState: PageStateEnum.SUCCESS);
    } else if (response != null && response.isEmpty) {
      state = state.copyWith(pageState: PageStateEnum.EMPTY);
    } else {
      state = state.copyWith(pageState: PageStateEnum.ERROR);
    }
  }

  void changeSelectedAge(int? newAge) {
    state = state.copyWith(selectedAge: newAge);
  }

  void changeSelectedBreed(BreedModel? newSelectedBreed) {
    state = state.copyWith(selectedBreed: newSelectedBreed);
  }

  showFilterBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: context.colors.background,
      context: context,
      builder: (BuildContext context) {
        return Wrap(
          children: [
            SafeArea(
              child: Container(
                  decoration: BoxDecoration(
                      color: context.colors.background,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(context.mediumValue),
                          topRight: Radius.circular(context.mediumValue))),
                  child: const FilterWidget()),
            ),
          ],
        );
      },
    );
  }
}
