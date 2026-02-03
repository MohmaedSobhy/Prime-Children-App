import 'package:flutter/material.dart';
import 'package:prime_app/core/utils/app_strings.dart';
import 'package:prime_app/core/widgets/custom_button_widget.dart';

class CustomLoginButton extends StatelessWidget {
  const CustomLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButtonWidget(
            text: AppString.of(context).loginButtonTitle,
            height: MediaQuery.sizeOf(context).height * 0.06,
            onPressed: () {
              //todo login user logic
            },
          ),
        ),
      ],
    );
  }
}
