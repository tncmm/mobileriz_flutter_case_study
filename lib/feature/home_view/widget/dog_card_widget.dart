import 'package:dog_adoption/core/extension/context_extension.dart';
import 'package:dog_adoption/core/utils/enums/text_style/text_style_enum.dart';
import 'package:dog_adoption/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class DogCard extends StatelessWidget {
  final String imageUrl;
  final String name;

  const DogCard({super.key, required this.imageUrl, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: context.borderRadiusNormal,
        color: context.colors.primary.withOpacity(0.3),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(context.lowValue),
              topRight: Radius.circular(context.lowValue),
            ),
            child: Image.network(
              imageUrl,
              height: context.height * 0.15,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: context.paddingLow + context.paddingLowTop,
            child: Row(
              children: [
                Expanded(
                  child: MyTextWidget(
                    text: name,
                    widgetType: MyTextStyleEnum.s17w700,
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
