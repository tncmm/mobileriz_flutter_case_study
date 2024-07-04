import 'package:dog_adoption/core/extension/context_extension.dart';
import 'package:dog_adoption/core/provider/theme_provider.dart';
import 'package:dog_adoption/core/provider/user_proivder.dart';
import 'package:dog_adoption/core/utils/enums/route_enum/route_enum.dart';
import 'package:dog_adoption/core/utils/enums/text_style/text_style_enum.dart';
import 'package:dog_adoption/core/widgets/text_widget.dart';
import 'package:dog_adoption/feature/home_view/drawer_view/widget/drawer_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DrawerMenu extends ConsumerWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProvider);
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: context.paddingLow,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: context.colors.primary,
                    radius: 30,
                    child: Padding(
                      padding: context.paddingLow * 0.5,
                      child: MyTextWidget(
                        text:
                            "${user?.firstName[0].toUpperCase() ?? ""} ${user?.lastName[0].toUpperCase() ?? ""}",
                        widgetType: MyTextStyleEnum.s20w600,
                        color: context.colors.onBackground,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: context.lowValue,
                  ),
                  Expanded(
                      child: MyTextWidget(
                          text: "Hello ${user?.firstName ?? ""}",
                          widgetType: MyTextStyleEnum.s18w500))
                ],
              ),
            ),
            const Divider(),
            SizedBox(
              height: context.normalValue,
            ),
            DrawerMenuItem(
                icon: Icons.favorite,
                onTapFunction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RoutesEnum.favorite.page),
                  );
                },
                title: "Favorites"),
            SizedBox(
              height: context.normalValue,
            ),
            DrawerMenuItem(
                icon: ref.watch(themeProvider.notifier).isDarkTheme
                    ? Icons.nightlight
                    : Icons.sunny,
                onTapFunction: () {
                  ref.read(themeProvider.notifier).toggleTheme();
                },
                title: "Toggle Theme"),
            SizedBox(
              height: context.normalValue,
            ),
            DrawerMenuItem(
                icon: Icons.logout,
                onTapFunction: () {
                  ref.read(userProvider.notifier).logout(context);
                },
                title: "Log Out")
          ],
        ),
      ),
    );
  }
}
