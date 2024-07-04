import 'package:dog_adoption/core/extension/context_extension.dart';
import 'package:dog_adoption/core/utils/enums/text_style/text_style_enum.dart';
import 'package:dog_adoption/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final List<Widget>? actionsList;
  final Widget? leadingWidget;

  const MyAppBar({super.key, this.title, this.actionsList, this.leadingWidget});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: MyTextWidget(
        text: title ?? 'Dog Adoption',
        widgetType: MyTextStyleEnum.s16w800,
        color: context.colors.primary,
      ),
      elevation: 0,
      actions: actionsList,
      leading: leadingWidget,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
