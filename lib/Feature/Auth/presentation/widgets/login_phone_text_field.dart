import 'package:flutter/material.dart';
import 'package:prime_app/Feature/Auth/presentation/controller/login_cubit.dart';
import 'package:prime_app/core/utils/app_strings.dart';
import 'package:prime_app/core/widgets/text_form_field_widget.dart';

class LoginPhoneTextField extends StatelessWidget {
  const LoginPhoneTextField({super.key});

  @override
  Widget build(BuildContext context) {
    LoginCubit cubit = LoginCubit.get(context);
    return CustomTextFormField(
      controller: cubit.phoneController,
      title: AppString.of(context).phoneNumberTextFieldTitle,
      hintText: AppString.of(context).phonenumberTextFieldHint,
      suffixIcon: const Icon(Icons.phone),
      validator: phoneValidator,
      keyboardType: TextInputType.phone,
    );
  }

  String? phoneValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Phone number is required';
    }

    final phone = value.replaceAll(RegExp(r'\s+'), '');

    if (!RegExp(r'^01[0-9]{9}$').hasMatch(phone)) {
      return 'Enter a valid Egyptian phone number';
    }

    return null;
  }
}
