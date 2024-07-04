import 'package:dog_adoption/core/extension/context_extension.dart';
import 'package:dog_adoption/core/utils/enums/text_style/text_style_enum.dart';
import 'package:dog_adoption/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final VoidCallback onTapFunction;
  const MyButton({super.key, required this.title, required this.onTapFunction});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunction,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: context.borderRadiusNormal,
            color: context.colors.primary,
          ),
          child: Center(
              child: Padding(
            padding: context.paddingLow * 2,
            child: MyTextWidget(
              text: title,
              widgetType: MyTextStyleEnum.s16w500,
            ),
          )),
        ),
      ),
    );
  }
}
