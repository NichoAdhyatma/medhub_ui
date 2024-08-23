import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'onboarding_event.dart';

part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final int totalPages;

  OnboardingBloc({required this.totalPages}) : super(OnboardingPageChanged(0)) {
    on<OnboardingEvent>(onboardingEventHandler);
    on<OnboardingPageChangeEvent>(onBoardingPageChangeHandler);
    on<OnboardingNextPageEvent>(onBoardingNextPageHandler);
    on<OnboardingSkipPageEvent>(onboardingSkipPageHandler);
  }

  FutureOr<void> onBoardingPageChangeHandler(
    OnboardingPageChangeEvent event,
    Emitter<OnboardingState> emit,
  ) {
    if (state is OnboardingPageChanged) {
      final currentPage = (state as OnboardingPageChanged).page;

      if (currentPage != event.pageIndex) {
        emit(OnboardingPageChanged(event.pageIndex));
      }
    }
  }

  FutureOr<void> onBoardingNextPageHandler(
    OnboardingNextPageEvent event,
    Emitter<OnboardingState> emit,
  ) {
    if (state is OnboardingPageChanged) {
      final currentPage = (state as OnboardingPageChanged).page;

      if (currentPage < totalPages - 1) {
        final nextPage = currentPage + 1;

        emit(OnboardingPageChanged(nextPage));
      } else {
        emit(OnboardingCompleted());
      }
    }
  }

  FutureOr<void> onboardingEventHandler(
    OnboardingEvent event,
    Emitter<OnboardingState> emit,
  ) {
    if (state is OnboardingCompleted) {
      emit(OnboardingPageChanged(0));
    }
  }

  FutureOr<void> onboardingSkipPageHandler(
    OnboardingSkipPageEvent event,
    Emitter<OnboardingState> emit,
  ) {
    emit(OnboardingCompleted());
  }
}
