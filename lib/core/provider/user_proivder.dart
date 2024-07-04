import 'package:dog_adoption/core/model/user_model/user_model.dart';
import 'package:dog_adoption/core/provider/token_provider.dart';
import 'package:dog_adoption/core/services/user_services.dart';
import 'package:dog_adoption/core/utils/enums/route_enum/route_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final userProvider = StateNotifierProvider<UserNotifier, UserModel?>((ref) {
  return UserNotifier(ref);
});

class UserNotifier extends StateNotifier<UserModel?> {
  Ref ref;
  UserNotifier(this.ref) : super(null) {
    getUserProfile();
  }

  void getUserProfile() async {
    final user = await ref.read(userService).getUserProfile();

    state = user;
  }

  Future<void> logout(BuildContext context) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('token', "");
      ref.read(tokenProvider.notifier).state = null;
      Future.delayed(Duration.zero, () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => RoutesEnum.login.page),
        );
      });
    } catch (e) {}
  }
}
