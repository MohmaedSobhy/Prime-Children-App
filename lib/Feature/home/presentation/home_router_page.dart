import 'package:flutter/material.dart';
import 'package:prime_app/Feature/owner/presentation/views/owner_view_layout.dart';
import 'package:prime_app/Feature/parent/presentation/views/parent_view_layout.dart';
import 'package:prime_app/Feature/teacher/presentation/views/teacher_view_layout.dart';
import 'package:prime_app/core/models/user_role_model.dart';

class HomeRouterPage extends StatelessWidget {
  const HomeRouterPage({super.key});

  @override
  Widget build(BuildContext context) {
    const role = UserRole.owner;

    switch (role) {
      case UserRole.owner:
        return const OwnerViewLayout();
      case UserRole.teacher:
        return const TeacherViewLayout();
      case UserRole.parent:
        return const ParentViewLayout();
      // default:
      //   return const HomeLoadingPage();
    }
  }
}
