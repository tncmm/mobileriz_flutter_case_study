import 'package:dog_adoption/core/extension/context_extension.dart';
import 'package:dog_adoption/core/utils/enums/text_style/text_style_enum.dart';
import 'package:dog_adoption/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class DrawerMenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTapFunction;
  const DrawerMenuItem({
    super.key,
    required this.icon,
    required this.onTapFunction,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingLowHorizontal,
      child: GestureDetector(
        onTap: onTapFunction,
        child: Row(
          children: [
            Icon(
              icon,
              color: context.colors.primary,
              size: 30,
            ),
            SizedBox(
              width: context.lowValue,
            ),
            Expanded(
              child: MyTextWidget(
                text: title,
                widgetType: MyTextStyleEnum.s17w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
