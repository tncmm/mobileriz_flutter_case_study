import 'package:dog_adoption/core/provider/snackbar_provider.dart';
import 'package:dog_adoption/core/provider/token_provider.dart';
import 'package:dog_adoption/core/utils/enums/route_enum/route_enum.dart';
import 'package:dog_adoption/core/widgets/snack_bar_widget.dart';
import 'package:dog_adoption/feature/login_view/login_service.dart';
import 'package:dog_adoption/feature/login_view/model/login_view_state_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final loginViewController =
    StateNotifierProvider.autoDispose<LoginViewController, LoginViewStateModel>(
        (ref) {
  ref.onDispose(() {});
  return LoginViewController(ref);
});

class LoginViewController extends StateNotifier<LoginViewStateModel> {
  LoginViewController(this.ref)
      : super(
          LoginViewStateModel(
            userNameController: TextEditingController(),
            passwordController: TextEditingController(),
          ),
        );
  final Ref ref;

  void changeShowPasswordState(bool newState) {
    state = state.copyWith(showPassword: newState);
  }

  Future<void> login(BuildContext context) async {
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
    } else if (state.passwordController.text.length < 6) {
      ref.read(snackBarProvider.notifier).showSnackBar(
          message: "Password must be at least 6 characters",
          snackBarType: SnackBarType.warning);
      return;
    }
    try {
      final response = await ref
          .read(loginService)
          .login(state.passwordController.text, state.userNameController.text);

      if (response != null) {
        ref.read(tokenProvider.notifier).state = response.accessToken;
        if (ref.watch(tokenProvider.notifier).state != null) {
          // ignore: use_build_context_synchronously
          Future.delayed(Duration.zero, () {
            saveToLocal(response.accessToken);
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
