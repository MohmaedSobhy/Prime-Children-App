import 'package:flutter/material.dart';
import 'package:prime_app/Feature/Auth/presentation/widgets/login_view_main_body.dart';

class LoginBodyView extends StatelessWidget {
  const LoginBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.sizeOf(context).height * 0.1,
              bottom:
                  MediaQuery.of(context).viewInsets.bottom +
                  MediaQuery.sizeOf(context).height * 0.05,
              right: MediaQuery.sizeOf(context).width * 0.05,
              left: MediaQuery.sizeOf(context).width * 0.05,
            ),
            child: const LoginViewMainBody(),
          ),
        ),
      ],
    );
  }
}
