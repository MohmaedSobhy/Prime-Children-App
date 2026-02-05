import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
    required this.text,
    this.height,
    this.width,
    this.onPressed,
    this.color,
    this.textStyle,
  });
  final String text;
  final double? height, width;
  final void Function()? onPressed;
  final Color? color;
  final TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: color ?? AppColors.primaryColor,
      height: height,
      minWidth: width,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      onPressed: onPressed,
      child: Text(
        text,
        style:
            textStyle ??
            AppTextStyles.lexendBold40(context: context, fontSize: 18),
      ),
    );
  }
}
