import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color primaryColor = Color(0xFF1834D5);
  static const Color splashSecondryColor = Color(0xFF793AEC);
  static const Color onBoardingDescriptionColor = Color(0xff616889);
  static const Color loginTitleColor = Color(0xff111218);
  static const Color loginSubtitleColor = Color(0xff616889);
  static const Color textFieldBorderColor = Color(0xffDBDDE6);
  static const Color textFieldHintTextColor = Color(0xff88888B);

  //owner view
  static const Color unselectedItemColor = Color(0xff94A3B8);
  // static const Color primaryColor200 = Color.fromARGB(255, 255, 78, 38);
  // static const Color white = Color(0xffFFFFFF);
  // static const Color black = Color(0xff000000);
  // static const Color black20 = Color(0xff121212);
  // static const Color grey = Color(0xff4F4F50);
  // static const Color grey200 = Color(0xffE4E4E4);
  // static const Color yellow = Color(0xffC7C82C);
  // static const Color grey300 = Color(0xff1F2223);
  // static const Color darkGrey = Color(0xff0E0F0F);
  // static const Color backgroundColorOpacity = Color(0xff565d61);
  // static const Color primaryPurple = Color(0xFF4E229E);
  // static const Color growthGreen = Color(0xFF64D14B);
  // static const Color starGold = Color(0xFFFFB800);
  // static const Color violetBlue = Color(0xFF8639F5);

  // static const LinearGradient logoGradient = LinearGradient(
  //   begin: Alignment.topCenter,
  //   end: Alignment.bottomCenter,
  //   colors: [primaryColor, violetBlue],
  // );

  static const LinearGradient splashGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primaryColor, splashSecondryColor],
  );
}
