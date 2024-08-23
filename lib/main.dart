import 'package:flutter/material.dart';
import 'package:medhub/core/themes/app_theme.dart';
import 'package:medhub/features/splash/presentation/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MedHub',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: const SplashPage(),
    );
  }
}
