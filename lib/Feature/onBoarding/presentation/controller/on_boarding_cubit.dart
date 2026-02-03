import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prime_app/Feature/onBoarding/presentation/controller/on_boarding_states.dart';
import 'package:prime_app/core/routes/app_route.dart';

class OnBoardingCubit extends Cubit<OnBoardingStates> {
  OnBoardingCubit() : super(OnBoardingInitial());

  static OnBoardingCubit get(BuildContext context) => BlocProvider.of(context);
  PageController pageController = PageController();
  int currentIndex = 0;
  void changePage() {
    pageController.nextPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.fastLinearToSlowEaseIn,
    );
    currentIndex++;
    emit(OnBoardingNextState());
  }

  void navigateToLogin(BuildContext context) {
    Navigator.pushReplacementNamed(context, AppRoute.loginScreen);
  }

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }
}
