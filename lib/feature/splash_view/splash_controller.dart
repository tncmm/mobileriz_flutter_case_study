import 'package:dog_adoption/core/provider/token_provider.dart';
import 'package:dog_adoption/core/utils/enums/route_enum/route_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final splashController = Provider((ref) => SplashController(ref));

class SplashController {
  Ref ref;
  SplashController(this.ref) : super();

  Future<void> getToken(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String? token = prefs.getString('token');

    ref.read(tokenProvider.notifier).state = token;

    Future.delayed(const Duration(seconds: 2), () {
      if (ref.read(tokenProvider.notifier).state != null &&
          ref.read(tokenProvider.notifier).state != "") {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => RoutesEnum.home.page));
      } else {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => RoutesEnum.login.page));
      }
    });
  }
}
