import 'package:flutter/material.dart';
import 'package:prime_app/Feature/Auth/presentation/widgets/login_body_view.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(child: LoginBodyView()),
    );
  }
}
