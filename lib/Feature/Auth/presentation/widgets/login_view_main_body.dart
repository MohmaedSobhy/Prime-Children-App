import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prime_app/Feature/Auth/presentation/controller/login_cubit.dart';
import 'package:prime_app/Feature/Auth/presentation/controller/login_states.dart';
import 'package:prime_app/Feature/Auth/presentation/widgets/custom_login_bottom_widget.dart';
import 'package:prime_app/Feature/Auth/presentation/widgets/custom_login_button.dart';
import 'package:prime_app/Feature/Auth/presentation/widgets/login_password_text_field.dart';
import 'package:prime_app/Feature/Auth/presentation/widgets/login_phone_text_field.dart';
import 'package:prime_app/Feature/Auth/presentation/widgets/login_subtitle_widget.dart';
import 'package:prime_app/Feature/Auth/presentation/widgets/login_title_widget.dart';
import 'package:prime_app/core/routes/app_route.dart';
import 'package:prime_app/core/widgets/error_pop_up.dart';

class LoginViewMainBody extends StatelessWidget {
  const LoginViewMainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginStates>(
      listener: (context, state) {
        if (state is LoginErrorState) {
          ErrorPopup.show(context, message: state.error);
          log('Error: ${state.error}');
        } else if (state is LoginSuccessState) {
          Navigator.pushReplacementNamed(context, AppRoute.homeScreen);
        }
      },
      builder: (context, state) {
        return Form(
          key: context.read<LoginCubit>().formKey,
          child: Column(
            children: [
              const LoginTitleWidget(),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
              const LoginSubtitleWidget(),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),
              const LoginPhoneTextField(),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
              LoginPasswordTextField(
                isPasswordVisible: BlocProvider.of<LoginCubit>(
                  context,
                ).isPasswordVisible,
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),
              const CustomLoginButton(),
              const Spacer(),
              const CustomLoginBottomWidget(),
            ],
          ),
        );
      },
    );
  }
}
