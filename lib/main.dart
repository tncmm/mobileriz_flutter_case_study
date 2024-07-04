import 'package:dog_adoption/core/provider/theme_provider.dart';
import 'package:dog_adoption/feature/splash_view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:overlay_support/overlay_support.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(
    const ProviderScope(
      child: (MyApp()),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OverlaySupport.global(
        child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dog Adoption',
      theme: ref.watch(themeProvider),
      home: const SplashView(),
    ));
  }
}
