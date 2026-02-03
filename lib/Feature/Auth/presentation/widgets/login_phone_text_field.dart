import 'package:flutter/material.dart';
import 'package:prime_app/core/utils/app_strings.dart';
import 'package:prime_app/core/widgets/text_form_field_widget.dart';

class LoginPhoneTextField extends StatelessWidget {
  const LoginPhoneTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      title: AppString.of(context).phoneNumberTextFieldTitle,
      hintText: AppString.of(context).phonenumberTextFieldHint,
      suffixIcon: const Icon(Icons.phone),
    );
  }
}
