import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_strings.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class ContactYourNurseryWidget extends StatelessWidget {
  const ContactYourNurseryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            //todo navigate to contact your nursery
          },
          child: Text(
            AppString.of(context).contactYourNursery,
            style: AppTextStyles.lexendBold40(
              context: context,
              fontSize: 14,
            ).copyWith(color: AppColors.primaryColor),
          ),
        ),
      ],
    );
  }
}
