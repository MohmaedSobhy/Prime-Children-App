import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_strings.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class SignOutButton extends StatelessWidget {
  const SignOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: () {
          // todo: sign out
        },
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: AppColors.primaryColor, width: 1.2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.sizeOf(context).height * 0.017,
          ),
        ),
        child: Text(
          AppString.signOut,
          style: AppTextStyles.lexendSemiBold12(
            context: context,
            fontSize: 13,
          ).copyWith(color: AppColors.primaryColor),
        ),
      ),
    );
  }
}
