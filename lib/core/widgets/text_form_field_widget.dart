import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.title,
    this.hintText,
    this.suffixIcon,
    this.controller,
    this.contentPadding,
  });
  final String title;
  final String? hintText;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final EdgeInsetsGeometry? contentPadding;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.lexendMedium16(
            context: context,
            fontSize: 14,
          ).copyWith(color: AppColors.loginTitleColor),
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: AppColors.textFieldBorderColor,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: AppColors.textFieldBorderColor,
              ),
            ),
            hintText: hintText,
            hintStyle: AppTextStyles.lexendRegular12(
              context: context,
              fontSize: 16,
            ).copyWith(color: AppColors.textFieldHintTextColor),
            suffixIcon: suffixIcon,
            contentPadding:
                contentPadding ??
                EdgeInsets.symmetric(
                  horizontal: MediaQuery.sizeOf(context).width * 0.03,
                  vertical: MediaQuery.sizeOf(context).height * 0.02,
                ),
          ),
        ),
      ],
    );
  }
}
