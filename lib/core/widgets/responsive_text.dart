import 'package:flutter/material.dart';

class ResponsiveText {
  static const double _baseWidth = 375;

  static double sp(
    BuildContext context,
    double fontSize, {
    double min = 12,
    double max = 32,
  }) {
    final scale = MediaQuery.of(context).size.width / _baseWidth;
    final size = fontSize * scale;
    return size.clamp(min, max);
  }
}
