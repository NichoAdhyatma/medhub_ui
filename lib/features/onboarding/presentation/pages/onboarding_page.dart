import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medhub/core/themes/app_palette.dart';
import 'package:medhub/features/auth/presentation/pages/auth_page.dart';
import 'package:medhub/features/onboarding/presentation/bloc/onboarding_bloc.dart';
import 'package:medhub/features/onboarding/presentation/widgets/onboarding_one_widget.dart';
import 'package:medhub/features/onboarding/presentation/widgets/onboarding_two_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatelessWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const OnboardingPage(),
      );

  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();

    return Scaffold(
      body: BlocProvider<OnboardingBloc>(
        create: (context) => OnboardingBloc(totalPages: 2),
        child: BlocConsumer<OnboardingBloc, OnboardingState>(
          listener: (BuildContext context, OnboardingState state) {
            if (state is OnboardingPageChanged) {
              pageController.animateToPage(
                state.page,
                duration: const Duration(milliseconds: 500),
                curve: Curves.ease,
              );
            }

            if (state is OnboardingCompleted) {
              pageController.jumpToPage(0);

              Navigator.of(context).push(
                AuthPage.route(),
              );
            }
          },
          builder: (context, state) => Column(
            children: [
              Expanded(
                flex: 4,
                child: Transform.translate(
                  offset: Offset(
                    0,
                    MediaQuery.of(context).size.height * 0.14,
                  ),
                  child: PageView(
                    controller: pageController,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index) {
                      context.read<OnboardingBloc>().add(
                            OnboardingPageChangeEvent(index),
                          );
                    },
                    children: const [
                      OnboardingOneWidget(),
                      OnboardingTwoWidget(),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        context.read<OnboardingBloc>().add(
                              OnboardingSkipPageEvent(),
                            );
                      },
                      child: Text(
                        "Skip",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: AppPalette.secondaryMutedColor,
                            ),
                      ),
                    ),
                    SmoothPageIndicator(
                      controller: pageController, // PageController
                      count: 2,
                      effect: const WormEffect(
                        dotWidth: 6.0,
                        dotHeight: 6.0,
                        activeDotColor: AppPalette.accentColor,
                      ), // your preferred effect
                      onDotClicked: (index) {
                        context.read<OnboardingBloc>().add(
                              OnboardingPageChangeEvent(index),
                            );
                      },
                    ),
                    InkWell(
                      onTap: () {
                        context.read<OnboardingBloc>().add(
                              OnboardingNextPageEvent(),
                            );
                      },
                      child: Text(
                        "Next",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: AppPalette.accentColor,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
