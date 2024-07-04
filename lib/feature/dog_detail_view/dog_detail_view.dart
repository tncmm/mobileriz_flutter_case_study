import 'package:dog_adoption/core/constants/static_image_urls.dart';
import 'package:dog_adoption/core/extension/context_extension.dart';
import 'package:dog_adoption/core/utils/enums/text_style/text_style_enum.dart';
import 'package:dog_adoption/core/widgets/text_widget.dart';
import 'package:dog_adoption/feature/dog_detail_view/dog_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DogDetailView extends ConsumerWidget {
  const DogDetailView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var controller = ref.watch(dogDetailController);
    var controllerNotifier = ref.watch(dogDetailController.notifier);
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.network(
                StaticData.imageUrlList[5],
              ),
              SafeArea(
                child: Padding(
                  padding: context.paddingNormal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: context.colors.onBackground,
                              shape: BoxShape.circle),
                          child: Padding(
                            padding: context.paddingLow,
                            child: Center(
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: context.colors.primary,
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          controllerNotifier.addFavorite();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: context.colors.onBackground,
                              shape: BoxShape.circle),
                          child: Padding(
                            padding: context.paddingLow,
                            child: Icon(
                              Icons.favorite,
                              color: context.colors.primary,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: context.lowValue,
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: context.paddingLowLeft,
                  child: MyTextWidget(
                      text: controller.dog?.name ?? "",
                      widgetType: MyTextStyleEnum.s18w800),
                ),
              )
            ],
          ),
          SizedBox(
            height: context.normalValue,
          ),
          Padding(
            padding: context.paddingLowHorizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: context.borderRadiusNormal,
                    color: context.colors.primary,
                  ),
                  child: Padding(
                    padding: context.paddingLow +
                        context.paddingMediumHorizontal * 1.5,
                    child: Column(
                      children: [
                        MyTextWidget(
                            text: "Age",
                            widgetType: MyTextStyleEnum.s18w600,
                            color:
                                context.colors.onBackground.withOpacity(0.5)),
                        SizedBox(
                          height: context.lowValue,
                        ),
                        MyTextWidget(
                            text: "${controller.dog?.age ?? ""}",
                            widgetType: MyTextStyleEnum.s18w600)
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: context.borderRadiusNormal,
                    color: context.colors.primary,
                  ),
                  child: Padding(
                    padding: context.paddingLow +
                        context.paddingMediumHorizontal * 1.5,
                    child: Column(
                      children: [
                        MyTextWidget(
                          text: "Size",
                          widgetType: MyTextStyleEnum.s18w600,
                          color: context.colors.onBackground.withOpacity(0.5),
                        ),
                        SizedBox(
                          height: context.lowValue,
                        ),
                        MyTextWidget(
                          text: "${controller.dog?.size ?? ""}",
                          widgetType: MyTextStyleEnum.s18w600,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: context.lowValue,
          ),
          Padding(
            padding: context.paddingLow,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: context.borderRadiusNormal,
                    color: context.colors.primary,
                  ),
                  child: Padding(
                    padding: context.paddingLow,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyTextWidget(
                            text: "Description",
                            widgetType: MyTextStyleEnum.s18w600,
                            color:
                                context.colors.onBackground.withOpacity(0.5)),
                        SizedBox(
                          height: context.lowValue,
                        ),
                        MyTextWidget(
                            text: controller.dog?.description ?? "",
                            widgetType: MyTextStyleEnum.s18w600)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
