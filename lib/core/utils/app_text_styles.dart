import 'package:flutter/material.dart';
import 'package:prime_app/core/widgets/responsive_text.dart';

class AppTextStyles {
  static TextStyle lexendBold40({required BuildContext context}) {
    return TextStyle(
      fontFamily: 'Lexend',
      fontWeight: FontWeight.w700,
      fontSize: ResponsiveText.sp(context, 40),
      color: Colors.white,
    );
  }

  static TextStyle lexendMedium16({required BuildContext context}) {
    return TextStyle(
      fontFamily: 'Lexend',
      fontWeight: FontWeight.w500,
      fontSize: ResponsiveText.sp(context, 16),
      color: Colors.white70,
    );
  }

  static TextStyle lexendRegular12({required BuildContext context}) {
    return TextStyle(
      fontFamily: 'Lexend',
      fontWeight: FontWeight.w400,
      fontSize: ResponsiveText.sp(context, 12),
      color: Colors.white60,
    );
  }
}
