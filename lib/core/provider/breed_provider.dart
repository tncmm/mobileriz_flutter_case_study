import 'package:dog_adoption/core/model/breed_model/breed_model.dart';
import 'package:dog_adoption/core/services/dog_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final breedProvider =
    StateNotifierProvider<BreedNotifier, List<BreedModel>>((ref) {
  return BreedNotifier(ref);
});

class BreedNotifier extends StateNotifier<List<BreedModel>> {
  Ref ref;
  BreedNotifier(this.ref) : super([]) {
    getBreeds();
  }

  void getBreeds() async {
    final breeds = await ref.read(dogService).getBreeds();
    if (breeds != null) {
      state = breeds;
    }
  }
}
