import 'package:flutter/material.dart';
import 'package:prime_app/Feature/Auth/presentation/widgets/custom_login_bottom_widget.dart';
import 'package:prime_app/Feature/Auth/presentation/widgets/custom_login_button.dart';
import 'package:prime_app/Feature/Auth/presentation/widgets/login_password_text_field.dart';
import 'package:prime_app/Feature/Auth/presentation/widgets/login_phone_text_field.dart';
import 'package:prime_app/Feature/Auth/presentation/widgets/login_subtitle_widget.dart';
import 'package:prime_app/Feature/Auth/presentation/widgets/login_title_widget.dart';

class LoginViewMainBody extends StatelessWidget {
  const LoginViewMainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LoginTitleWidget(),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
        const LoginSubtitleWidget(),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),
        const LoginPhoneTextField(),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
        const LoginPasswordTextField(),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),
        const CustomLoginButton(),
        const Spacer(),
        const CustomLoginBottomWidget(),
      ],
    );
  }
}
