import 'package:flutter/material.dart';
import 'package:prime_app/Feature/Auth/presentation/controller/login_cubit.dart';
import 'package:prime_app/core/utils/app_strings.dart';
import 'package:prime_app/core/widgets/text_form_field_widget.dart';

class LoginPasswordTextField extends StatelessWidget {
  const LoginPasswordTextField({super.key, required this.isPasswordVisible});
  final bool isPasswordVisible;
  @override
  Widget build(BuildContext context) {
    LoginCubit cubit = LoginCubit.get(context);
    return CustomTextFormField(
      controller: cubit.passwordController,
      validator: passwordValidator,
      title: AppString.of(context).passwordTextFieldTitle,
      hintText: AppString.of(context).passwordTextFieldHint,
      obscureText: isPasswordVisible,
      suffixIcon: InkWell(
        onTap: () {
          cubit.changePasswordVisibility();
        },
        child: cubit.isPasswordVisible
            ? const Icon(Icons.visibility_off)
            : const Icon(Icons.visibility),
      ),
    );
  }

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    if (value.length < 8) {
      return 'Password must be at least 8 characters';
    }

    if (!RegExp(r'[A-Za-z]').hasMatch(value)) {
      return 'Password must contain a letter';
    }

    if (!RegExp(r'\d').hasMatch(value)) {
      return 'Password must contain a number';
    }

    return null;
  }
}
