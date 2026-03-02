import 'package:flutter/material.dart';

class NurseryDetailsOverviewCardModel {
  final String title;
  final String value;
  final String subtitle;
  final IconData icon;
  final Color iconBackground;
  final Color accentColor;
  final String? badgeText;

  const NurseryDetailsOverviewCardModel({
    required this.title,
    required this.value,
    required this.subtitle,
    required this.icon,
    required this.iconBackground,
    required this.accentColor,
    this.badgeText,
  });
}

class NurseryDetailsActivityModel {
  final String title;
  final String timeRange;
  final String? tag;
  final Color? tagBackgroundColor;
  final Color? tagTextColor;
  final bool isDone;

  const NurseryDetailsActivityModel({
    required this.title,
    required this.timeRange,
    this.tag,
    this.tagBackgroundColor,
    this.tagTextColor,
    required this.isDone,
  });
}

class NurseryDetailsMenuModel {
  final String mealType;
  final String title;
  final String subtitle;

  const NurseryDetailsMenuModel({
    required this.mealType,
    required this.title,
    required this.subtitle,
  });
}
