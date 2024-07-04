import 'package:dog_adoption/core/extension/context_extension.dart';
import 'package:dog_adoption/core/utils/enums/route_enum/route_enum.dart';
import 'package:dog_adoption/core/utils/enums/text_style/text_style_enum.dart';
import 'package:dog_adoption/core/widgets/app_bar_widget.dart';
import 'package:dog_adoption/core/widgets/authentication_text_field_widget.dart';
import 'package:dog_adoption/core/widgets/button_widget.dart';
import 'package:dog_adoption/core/widgets/text_widget.dart';
import 'package:dog_adoption/feature/login_view/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginView extends ConsumerWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var controller = ref.watch(loginViewController);
    var controllerNotifier = ref.read(loginViewController.notifier);
    return Scaffold(
      appBar: const MyAppBar(),
      body: Padding(
        padding: context.paddingNormal,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyTextWidget(
                text: "Welcome the Dog Adoption app!",
                widgetType: MyTextStyleEnum.s18w600,
              ),
              SizedBox(
                height: context.normalValue * 2,
              ),
              const MyTextWidget(
                text: "Username",
                widgetType: MyTextStyleEnum.s16w500,
              ),
              SizedBox(
                height: context.lowValue,
              ),
              AuthenticationTextFieldWidget(
                controller: controller.userNameController,
                hintText: "Enter your username",
              ),
              SizedBox(
                height: context.normalValue,
              ),
              const MyTextWidget(
                text: "Password",
                widgetType: MyTextStyleEnum.s16w500,
              ),
              SizedBox(
                height: context.lowValue,
              ),
              AuthenticationTextFieldWidget(
                controller: controller.passwordController,
                hintText: "Enter your password",
                hasSuffixIcon: true,
                isHideText: !controller.showPassword,
                suffixIconOnTapFunction: () {
                  controllerNotifier
                      .changeShowPasswordState(!controller.showPassword);
                },
                suffixIconState: controller.showPassword,
              ),
              SizedBox(
                height: context.normalValue * 4,
              ),
              MyButton(
                  title: "Login",
                  onTapFunction: () {
                    controllerNotifier.login(context);
                  }),
              SizedBox(
                height: context.normalValue,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const MyTextWidget(
                    text: "Do you haven't account",
                    widgetType: MyTextStyleEnum.s16w500,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RoutesEnum.register.page,
                        ),
                      );
                    },
                    child: Padding(
                      padding: context.paddingLow,
                      child: MyTextWidget(
                        text: "Register",
                        decoration: TextDecoration.underline,
                        widgetType: MyTextStyleEnum.s16w800,
                        color: context.colors.primary,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
