import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prime_app/Feature/onBoarding/presentation/controller/on_boarding_cubit.dart';
import 'package:prime_app/Feature/onBoarding/presentation/controller/on_boarding_states.dart';
import 'package:prime_app/Feature/onBoarding/presentation/views/on_boarding_view_page_view.dart';
import 'package:prime_app/core/utils/app_constants.dart';
import 'package:prime_app/core/utils/app_strings.dart';
import 'package:prime_app/core/widgets/custom_button_widget.dart';
import 'package:prime_app/core/widgets/custom_smooth_page_indicator.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final items = AppConstants.onBoardingItems(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * 0.05,
      ),
      child: BlocBuilder<OnBoardingCubit, OnBoardingStates>(
        builder: (context, state) {
          OnBoardingCubit cubit = OnBoardingCubit.get(context);
          return Column(
            children: [
              const Expanded(child: OnBoardingViewPageView()),
              Column(
                children: [
                  CustomSmoothPageIndicatorWidget(
                    pageController: cubit.pageController,
                    length: items.length,
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
                  CustomButtonWidget(
                    text: cubit.currentIndex == items.length - 1
                        ? AppString.of(context).getStarted
                        : AppString.of(context).next,
                    height: MediaQuery.sizeOf(context).height * 0.06,
                    width: MediaQuery.sizeOf(context).width * 0.95,
                    onPressed: () => cubit.currentIndex == items.length - 1
                        ? cubit.navigateToLogin(context)
                        : cubit.changePage(),
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
