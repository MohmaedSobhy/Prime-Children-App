import 'package:flutter/material.dart';

class NurseryCardModel {
  final String name;
  final String status;
  final Color statusColor;
  final String address;
  final Color avatarBackground;
  final IconData avatarIcon;
  final bool showOnlineDot;

  const NurseryCardModel({
    required this.name,
    required this.status,
    required this.statusColor,
    required this.address,
    required this.avatarBackground,
    required this.avatarIcon,
    required this.showOnlineDot,
  });
}
