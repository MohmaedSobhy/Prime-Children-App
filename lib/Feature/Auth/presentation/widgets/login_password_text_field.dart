import 'package:flutter/material.dart';
import 'package:prime_app/core/utils/app_strings.dart';
import 'package:prime_app/core/widgets/text_form_field_widget.dart';

class LoginPasswordTextField extends StatelessWidget {
  const LoginPasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      title: AppString.of(context).passwordTextFieldTitle,
      hintText: AppString.of(context).passwordTextFieldHint,
      suffixIcon: InkWell(
        onTap: () {
          // todo change visibility of password
        },
        child: const Icon(Icons.visibility),
      ),
    );
  }
}
