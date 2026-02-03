import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prime_app/Feature/onBoarding/presentation/controller/on_boarding_cubit.dart';
import 'package:prime_app/Feature/onBoarding/presentation/views/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocProvider(
        create: (context) => OnBoardingCubit(),
        child: const SafeArea(child: OnBoardingViewBody()),
      ),
    );
  }
}
