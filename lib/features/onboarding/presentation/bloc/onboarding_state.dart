part of 'onboarding_bloc.dart';

@immutable
sealed class OnboardingState {}

final class OnboardingPageChanged extends OnboardingState {
  final int page;

  OnboardingPageChanged(this.page);
}

final class OnboardingCompleted extends OnboardingState {}
