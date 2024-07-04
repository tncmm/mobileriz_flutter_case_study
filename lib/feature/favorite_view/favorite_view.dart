import 'package:dog_adoption/core/constants/static_image_urls.dart';
import 'package:dog_adoption/core/extension/context_extension.dart';
import 'package:dog_adoption/core/utils/enums/page_state/page_state_enum.dart';
import 'package:dog_adoption/core/utils/enums/text_style/text_style_enum.dart';
import 'package:dog_adoption/core/widgets/app_bar_widget.dart';
import 'package:dog_adoption/core/widgets/text_widget.dart';
import 'package:dog_adoption/feature/favorite_view/favorite_controller.dart';
import 'package:dog_adoption/feature/home_view/widget/dog_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoriteView extends ConsumerWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var controller = ref.watch(favoriteController);
    return Scaffold(
      appBar: const MyAppBar(
        title: "Favorites",
      ),
      body: Column(
        children: [
          Builder(builder: (context) {
            if (controller.pageState == PageStateEnum.SUCCESS) {
              return Expanded(
                child: GridView.count(
                    mainAxisSpacing: context.lowValue,
                    crossAxisSpacing: context.lowValue,
                    crossAxisCount: 2,
                    children: List.generate(controller.dogs.length, (index) {
                      return DogCard(
                        imageUrl: StaticData.imageUrlList[index % 10],
                        name: controller.dogs[index].name,
                      );
                    })),
              );
            } else if (controller.pageState == PageStateEnum.EMPTY) {
              return const Center(
                child: MyTextWidget(
                    text: "You has not any favorite dog",
                    widgetType: MyTextStyleEnum.s18w500),
              );
            } else if (controller.pageState == PageStateEnum.ERROR) {
              return const Center(
                child: MyTextWidget(
                    text: "An Error Occurred While Fetching Data",
                    widgetType: MyTextStyleEnum.s18w500),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          })
        ],
      ),
    );
  }
}
