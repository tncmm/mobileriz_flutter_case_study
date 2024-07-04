import 'package:dog_adoption/core/extension/context_extension.dart';
import 'package:dog_adoption/core/utils/enums/text_style/text_style_enum.dart';
import 'package:dog_adoption/core/widgets/text_widget.dart';
import 'package:dog_adoption/feature/splash_view/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashView extends ConsumerWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(splashController).getToken(context);
    return Scaffold(
      backgroundColor: context.colors.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: context.normalValue,
          ),
          MyTextWidget(
            text: "Welcome Dog Adoption App",
            widgetType: MyTextStyleEnum.s18w700,
            color: context.colors.background,
          ),
          SizedBox(
            height: context.normalValue * 2,
          ),
          SpinKitSpinningLines(color: context.colors.primary)
        ],
      ),
    );
  }
}
