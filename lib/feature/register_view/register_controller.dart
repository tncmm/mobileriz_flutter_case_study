import 'package:dog_adoption/core/provider/snackbar_provider.dart';
import 'package:dog_adoption/core/provider/token_provider.dart';
import 'package:dog_adoption/core/utils/enums/route_enum/route_enum.dart';
import 'package:dog_adoption/core/widgets/snack_bar_widget.dart';
import 'package:dog_adoption/feature/register_view/model/register_view_state_model.dart';
import 'package:dog_adoption/feature/register_view/register_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final registerViewController = StateNotifierProvider.autoDispose<
    RegisterViewController, RegisterViewStateModel>((ref) {
  ref.onDispose(() {});
  return RegisterViewController(ref);
});

class RegisterViewController extends StateNotifier<RegisterViewStateModel> {
  RegisterViewController(this.ref)
      : super(
          RegisterViewStateModel(
              userNameController: TextEditingController(),
              passwordController: TextEditingController(),
              nameController: TextEditingController(),
              surnameController: TextEditingController(),
              emailController: TextEditingController()),
        );
  final Ref ref;

  void changeShowPasswordState(bool newState) {
    state = state.copyWith(showPassword: newState);
  }

  Future<void> register(BuildContext context) async {
    if (state.passwordController.text.isEmpty) {
      ref.read(snackBarProvider.notifier).showSnackBar(
          message: "Please enter your password",
          snackBarType: SnackBarType.warning);
      return;
    } else if (state.userNameController.text.isEmpty) {
      ref.read(snackBarProvider.notifier).showSnackBar(
          message: "Please enter your password",
          snackBarType: SnackBarType.warning);
      return;
    } else if (state.nameController.text.isEmpty) {
      ref.read(snackBarProvider.notifier).showSnackBar(
          message: "Please enter your name",
          snackBarType: SnackBarType.warning);
      return;
    } else if (state.surnameController.text.isEmpty) {
      ref.read(snackBarProvider.notifier).showSnackBar(
          message: "Please enter your surname",
          snackBarType: SnackBarType.warning);
      return;
    } else if (state.emailController.text.isEmpty) {
      ref.read(snackBarProvider.notifier).showSnackBar(
          message: "Please enter your email",
          snackBarType: SnackBarType.warning);
      return;
    } else if (state.passwordController.text.length < 6) {
      ref.read(snackBarProvider.notifier).showSnackBar(
          message: "Password must be at least 6 characters",
          snackBarType: SnackBarType.warning);
      return;
    }
    try {
      final response = await ref.read(registerService).createUser(
          state.nameController.text,
          state.surnameController.text,
          state.emailController.text,
          state.passwordController.text,
          state.userNameController.text);
      if (response != null) {
        ref.read(tokenProvider.notifier).state = response.accessToken;
        if (ref.read(tokenProvider.notifier).state != null) {
          Future.delayed(Duration.zero, () {
            saveToLocal(response.accessToken);
            ref.read(snackBarProvider.notifier).showSnackBar(
                message: "You create account succesfully",
                snackBarType: SnackBarType.success);
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => RoutesEnum.home.page,
              ),
            );
          });
        }
      }
      // ignore: empty_catches
    } catch (e) {}
  }

  void saveToLocal(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
  }
}
