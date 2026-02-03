import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prime_app/Feature/Auth/presentation/controller/login_cubit.dart';
import 'package:prime_app/Feature/Auth/presentation/widgets/login_body_view.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: BlocProvider(
        create: (context) => LoginCubit(),
        child: const SafeArea(child: LoginBodyView()),
      ),
    );
  }
}
