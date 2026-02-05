import 'package:flutter/material.dart';
import 'package:prime_app/core/widgets/responsive_text.dart';

class AppTextStyles {
  static TextStyle lexendBold40({
    required BuildContext context,
    double fontSize = 40,
  }) {
    return TextStyle(
      fontFamily: 'Lexend',
      fontWeight: FontWeight.w700,
      fontSize: ResponsiveText.sp(context, fontSize),
      color: Colors.white,
    );
  }

  static TextStyle lexendMedium16({
    required BuildContext context,
    double fontSize = 16,
  }) {
    return TextStyle(
      fontFamily: 'Lexend',
      fontWeight: FontWeight.w500,
      fontSize: ResponsiveText.sp(context, fontSize),
      color: Colors.white70,
    );
  }

  static TextStyle lexendRegular12({
    required BuildContext context,
    double fontSize = 12,
  }) {
    return TextStyle(
      fontFamily: 'Lexend',
      fontWeight: FontWeight.w400,
      fontSize: ResponsiveText.sp(context, fontSize),
      color: Colors.white60,
    );
  }

  static TextStyle lexendSemiBold12({
    required BuildContext context,
    double fontSize = 12,
  }) {
    return TextStyle(
      fontFamily: 'Lexend',
      fontWeight: FontWeight.w600,
      fontSize: ResponsiveText.sp(context, fontSize),
      color: Colors.white60,
    );
  }

  static TextStyle lexendLight12({
    required BuildContext context,
    double fontSize = 12,
  }) {
    return TextStyle(
      fontFamily: 'Lexend',
      fontWeight: FontWeight.w300,
      fontSize: ResponsiveText.sp(context, fontSize),
      color: Colors.white60,
    );
  }
}
