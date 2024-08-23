import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medhub/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:medhub/features/splash/presentation/cubit/splash_cubit.dart';
import 'package:medhub/generated/assets.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit()..loadSplash(),
      child: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          if (state is SplashLoaded) {
            Navigator.of(context).pushAndRemoveUntil(
              OnboardingPage.route(),
              (route) => false,
            );
          }
        },
        child: Scaffold(
          body: Stack(
            children: [
              Center(
                child: Image.asset(
                  width: MediaQuery.of(context).size.width * 0.3,
                  Assets.imagesAppLogo2x,
                ),
              ),
              Positioned(
                bottom: 0,
                child: Image.asset(
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                  Assets.imagesSplashBg,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
