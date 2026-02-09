import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class CustomTextFormFieldWithTitle extends StatelessWidget {
  const CustomTextFormFieldWithTitle({
    super.key,
    this.title,
    this.hintText,
    this.suffixIcon,
    this.controller,
    this.contentPadding,
    this.formKey,
    this.validator,
    this.obscureText,
    this.keyboardType,
    this.fillColor,
    this.prefix,
  });
  final String? title;
  final String? hintText;
  final Widget? suffixIcon, prefix;
  final TextEditingController? controller;
  final Key? formKey;
  final EdgeInsetsGeometry? contentPadding;
  final String? Function(String?)? validator;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final Color? fillColor;
  @override
  Widget build(BuildContext context) {
    if (title != null) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title!,
            style: AppTextStyles.lexendMedium16(
              context: context,
              fontSize: 14,
            ).copyWith(color: AppColors.loginTitleColor),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
          CustomTextFormField(
            keyboardType: keyboardType,
            formKey: formKey,
            controller: controller,
            obscureText: obscureText,
            fillColor: fillColor,
            prefix: prefix,
            hintText: hintText,
            suffixIcon: suffixIcon,
            contentPadding: contentPadding,
            validator: validator,
          ),
        ],
      );
    } else {
      return CustomTextFormField(
        keyboardType: keyboardType,
        formKey: formKey,
        controller: controller,
        obscureText: obscureText,
        fillColor: fillColor,
        prefix: prefix,
        hintText: hintText,
        suffixIcon: suffixIcon,
        contentPadding: contentPadding,
        validator: validator,
      );
    }
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.keyboardType,
    this.formKey,
    this.controller,
    this.obscureText,
    this.fillColor,
    this.prefix,
    this.hintText,
    this.suffixIcon,
    this.contentPadding,
    this.validator,
    this.filled,
  });
  final bool? filled;
  final TextInputType? keyboardType;
  final Key? formKey;
  final TextEditingController? controller;
  final bool? obscureText;
  final Color? fillColor;
  final Widget? prefix;
  final String? hintText;
  final Widget? suffixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      key: formKey,
      controller: controller,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        fillColor: fillColor,
        filled: filled,
        prefixIcon: prefix,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: AppColors.textFieldBorderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: AppColors.textFieldBorderColor),
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
      validator: validator,
    );
  }
}
