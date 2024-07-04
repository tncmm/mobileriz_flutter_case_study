import 'package:dog_adoption/core/constants/static_image_urls.dart';
import 'package:dog_adoption/core/extension/context_extension.dart';
import 'package:dog_adoption/core/provider/user_proivder.dart';
import 'package:dog_adoption/core/utils/enums/page_state/page_state_enum.dart';
import 'package:dog_adoption/core/utils/enums/route_enum/route_enum.dart';
import 'package:dog_adoption/core/utils/enums/text_style/text_style_enum.dart';
import 'package:dog_adoption/core/widgets/app_bar_widget.dart';
import 'package:dog_adoption/core/widgets/text_widget.dart';
import 'package:dog_adoption/feature/dog_detail_view/dog_detail_controller.dart';
import 'package:dog_adoption/feature/home_view/drawer_view/drawer_view.dart';
import 'package:dog_adoption/feature/home_view/home_view_controller.dart';
import 'package:dog_adoption/feature/home_view/widget/dog_card_widget.dart';
import 'package:dog_adoption/feature/home_view/widget/search_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var controller = ref.watch(homeViewController);
    var controllerNotifier = ref.watch(homeViewController.notifier);
    var key = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: key,
      drawer: const DrawerMenu(),
      appBar: MyAppBar(
        leadingWidget: GestureDetector(
          onTap: () {
            ref.read(userProvider.notifier).getUserProfile();
            key.currentState!.openDrawer();
          },
          child: Padding(
            padding: context.paddingLow,
            child: Icon(
              Icons.menu,
              color: context.colors.primary,
            ),
          ),
        ),
        actionsList: [
          Padding(
            padding: context.paddingLow,
            child: GestureDetector(
              onTap: () {
                controllerNotifier.showFilterBottomSheet(context);
              },
              child: Padding(
                padding: context.paddingLow,
                child: controller.selectedAge != null ||
                        controller.selectedBreed != null
                    ? Icon(
                        Icons.filter_alt_off,
                        color: context.colors.primary,
                      )
                    : Icon(
                        Icons.filter_list_alt,
                        color: context.colors.primary,
                      ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: context.paddingLow,
        child: Column(
          children: [
            const SearchBarWidget(),
            SizedBox(
              height: context.lowValue,
            ),
            Builder(builder: (context) {
              if (controller.pageState == PageStateEnum.SUCCESS) {
                return Expanded(
                  child: GridView.count(
                      mainAxisSpacing: context.lowValue,
                      crossAxisSpacing: context.lowValue,
                      crossAxisCount: 2,
                      children: List.generate(controller.dogs.length, (index) {
                        return GestureDetector(
                          onTap: () {
                            ref.read(tempDogIdProvider.notifier).state =
                                controller.dogs[index].id;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        RoutesEnum.dogDetail.page));
                          },
                          child: DogCard(
                            imageUrl: StaticData.imageUrlList[index % 10],
                            name: controller.dogs[index].name,
                          ),
                        );
                      })),
                );
              } else if (controller.pageState == PageStateEnum.EMPTY) {
                return const Center(
                  child: MyTextWidget(
                      text: "Cannot Find Dog",
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
      ),
    );
  }
}
