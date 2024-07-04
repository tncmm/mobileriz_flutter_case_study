import 'package:dog_adoption/core/extension/context_extension.dart';
import 'package:dog_adoption/core/utils/enums/text_style/text_style_enum.dart';
import 'package:dog_adoption/core/widgets/app_bar_widget.dart';
import 'package:dog_adoption/core/widgets/authentication_text_field_widget.dart';
import 'package:dog_adoption/core/widgets/button_widget.dart';
import 'package:dog_adoption/core/widgets/text_widget.dart';
import 'package:dog_adoption/feature/register_view/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegisterView extends ConsumerWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var controller = ref.watch(registerViewController);
    var controllerNotifier = ref.read(registerViewController.notifier);
    return Scaffold(
      appBar: const MyAppBar(),
      body: Padding(
        padding: context.paddingNormal,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyTextWidget(
                text: "Create your account!",
                widgetType: MyTextStyleEnum.s18w600,
              ),
              SizedBox(
                height: context.normalValue * 2,
              ),
              const MyTextWidget(
                text: "Name",
                widgetType: MyTextStyleEnum.s16w500,
              ),
              SizedBox(
                height: context.lowValue,
              ),
              AuthenticationTextFieldWidget(
                controller: controller.nameController,
                hintText: "Enter your name",
              ),
              SizedBox(
                height: context.normalValue,
              ),
              const MyTextWidget(
                text: "Surname",
                widgetType: MyTextStyleEnum.s16w500,
              ),
              SizedBox(
                height: context.lowValue,
              ),
              AuthenticationTextFieldWidget(
                controller: controller.surnameController,
                hintText: "Enter your surname",
              ),
              SizedBox(
                height: context.normalValue,
              ),
              const MyTextWidget(
                text: "Email",
                widgetType: MyTextStyleEnum.s16w500,
              ),
              SizedBox(
                height: context.lowValue,
              ),
              AuthenticationTextFieldWidget(
                controller: controller.emailController,
                hintText: "Enter your email",
              ),
              SizedBox(
                height: context.normalValue,
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
                height: context.normalValue * 3,
              ),
              MyButton(
                  title: "Register",
                  onTapFunction: () {
                    controllerNotifier.register(context);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
