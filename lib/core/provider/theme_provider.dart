import 'package:dog_adoption/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeData>(
    (ref) => ThemeNotifier(ref));

class ThemeNotifier extends StateNotifier<ThemeData> {
  bool isDarkTheme = false;

  ThemeNotifier(Ref ref) : super(AppTheme.instance.darkTheme) {
    init();
  }

  Future<void> init() async {
    getTheme();
  }

  void getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    isDarkTheme = prefs.getBool('themeKey') ?? false;

    state = isDarkTheme
        ? AppTheme.instance.darkTheme
        : AppTheme.instance.lightTheme;
  }

  Future<void> toggleTheme() async {
    isDarkTheme = !isDarkTheme;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('themeKey', isDarkTheme);
    state = isDarkTheme
        ? AppTheme.instance.darkTheme
        : AppTheme.instance.lightTheme;
  }
}
