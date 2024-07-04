import 'package:dog_adoption/core/extension/context_extension.dart';
import 'package:dog_adoption/feature/home_view/home_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchBarWidget extends ConsumerWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var controller = ref.watch(homeViewController);
    var controllerNotifier = ref.read(homeViewController.notifier);
    return Container(
      decoration: BoxDecoration(
        borderRadius: context.borderRadiusNormal,
        color: context.colors.primary.withOpacity(0.4),
      ),
      child: Padding(
        padding:
            context.paddingLowHorizontal + context.paddingLowVertical * 0.1,
        child: TextField(
          controller: controller.searchController,
          decoration: InputDecoration(
            suffixIcon: controller.searchController.text.isEmpty
                ? GestureDetector(
                    onTap: () {
                      if (controller.searchController.text.isNotEmpty) {
                        controllerNotifier.searchDog();
                      }
                    },
                    child: Padding(
                      padding: context.paddingLowHorizontal +
                          context.paddingLowVertical * 0.1,
                      child: Icon(
                        Icons.search,
                        color: context.colors.onBackground,
                      ),
                    ),
                  )
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          controller.searchController.text = "";
                          controllerNotifier.getDogs();
                        },
                        child: Padding(
                          padding: context.paddingLowHorizontal +
                              context.paddingLowVertical * 0.1,
                          child: Icon(
                            Icons.close,
                            color: context.colors.onBackground,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (controller.searchController.text.isNotEmpty) {
                            controllerNotifier.searchDog();
                          }
                        },
                        child: Padding(
                          padding: context.paddingLowHorizontal * 0.5 +
                              context.paddingLowVertical * 0.1,
                          child: Icon(
                            Icons.search,
                            color: context.colors.onBackground,
                          ),
                        ),
                      ),
                    ],
                  ),
            border: InputBorder.none,
            hintText: "Search",
            hintStyle: TextStyle(
              color: context.colors.onBackground,
            ),
          ),
          onChanged: (value) {},
          onSubmitted: (value) {
            if (controller.searchController.text.isNotEmpty) {
              controllerNotifier.searchDog();
            }
          },
        ),
      ),
    );
  }
}
