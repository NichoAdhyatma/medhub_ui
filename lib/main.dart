import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medhub/core/themes/app_theme.dart';
import 'package:medhub/features/home/presentation/cubit/bottom_navbar_cubit/bottom_navbar_cubit.dart';
import 'package:medhub/features/splash/presentation/pages/splash_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavbarCubit(),
      child: MaterialApp(
        title: 'MedHub',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.theme,
        home: const SplashPage(),
      ),
    );
  }
}
