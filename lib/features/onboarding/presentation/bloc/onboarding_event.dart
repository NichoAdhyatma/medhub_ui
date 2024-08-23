part of 'onboarding_bloc.dart';

@immutable
sealed class OnboardingEvent {}

class OnboardingPageChangeEvent extends OnboardingEvent {
  final int pageIndex;

  OnboardingPageChangeEvent(this.pageIndex);
}

class OnboardingNextPageEvent extends OnboardingEvent {}

class OnboardingSkipPageEvent extends OnboardingEvent {}
