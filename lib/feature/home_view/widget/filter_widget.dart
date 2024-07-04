// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member

import 'package:dog_adoption/core/extension/context_extension.dart';
import 'package:dog_adoption/core/provider/breed_provider.dart';
import 'package:dog_adoption/core/utils/enums/text_style/text_style_enum.dart';
import 'package:dog_adoption/core/widgets/text_widget.dart';
import 'package:dog_adoption/feature/home_view/home_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FilterWidget extends ConsumerWidget {
  const FilterWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var controller = ref.watch(homeViewController);
    var controllerNotifier = ref.read(homeViewController.notifier);
    return Padding(
      padding: context.paddingLow,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  controllerNotifier.changeSelectedAge(null);
                  controllerNotifier.changeSelectedBreed(null);
                  controllerNotifier.getDogs();
                  Navigator.pop(context);
                },
                child: const MyTextWidget(
                    text: "Clear", widgetType: MyTextStyleEnum.s16w500),
              ),
              MyTextWidget(
                text: "Filter",
                widgetType: MyTextStyleEnum.s17w700,
                color: context.colors.primary,
              ),
              TextButton(
                onPressed: () {
                  controllerNotifier.getDogs();
                  Navigator.pop(context);
                },
                child: const MyTextWidget(
                    text: "Apply", widgetType: MyTextStyleEnum.s16w500),
              ),
            ],
          ),
          const Divider(),
          Padding(
            padding:
                context.paddingLowHorizontal * 0.5 + context.paddingLowBottom,
            child: MyTextWidget(
              text: "Breeds",
              widgetType: MyTextStyleEnum.s17w700,
              color: context.colors.primary,
            ),
          ),
          Padding(
            padding: context.paddingLowHorizontal * 0.5,
            child: Wrap(
              spacing: context.lowValue * 0.5,
              runSpacing: context.lowValue * 0.5,
              children: [
                ...ref.watch(breedProvider.notifier).state.map(
                      (e) => GestureDetector(
                        onTap: () {
                          controllerNotifier.changeSelectedBreed(e);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: controller.selectedBreed == e
                                ? context.colors.primary.withOpacity(0.4)
                                : null,
                            borderRadius: context.borderRadiusNormal,
                            border: Border.all(
                              color: context.colors.primary,
                            ),
                          ),
                          child: Padding(
                            padding: context.paddingLow,
                            child: MyTextWidget(
                              text: e.name,
                              widgetType: MyTextStyleEnum.s16w500,
                            ),
                          ),
                        ),
                      ),
                    ),
              ],
            ),
          ),
          Padding(
            padding:
                context.paddingLowHorizontal * 0.5 + context.paddingLowVertical,
            child: MyTextWidget(
              text: "Age",
              widgetType: MyTextStyleEnum.s17w700,
              color: context.colors.primary,
            ),
          ),
          Slider(
              label: controller.selectedAge.toString(),
              divisions: 5,
              min: 0,
              max: 5,
              value: controller.selectedAge?.toDouble() ?? 0,
              onChanged: (newValue) {
                controllerNotifier.changeSelectedAge(newValue.toInt());
              })
        ],
      ),
    );
  }
}
