import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';

class CustomOwnerDashboaredAppBar extends StatelessWidget {
  const CustomOwnerDashboaredAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: MediaQuery.sizeOf(context).width * 0.05,
          backgroundImage: const NetworkImage(
            "https://images.unsplash.com/photo-1499714608240-22fc6ad53fb2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.settings,
            size: MediaQuery.sizeOf(context).width * 0.07,
            color: AppColors.settingIconColor,
          ),
        ),
      ],
    );
  }
}
