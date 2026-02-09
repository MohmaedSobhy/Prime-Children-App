import 'package:flutter/material.dart';

class MessageItemModel {
  final String name;
  final String role;
  final Color roleColor;
  final String preview;
  final String time;
  final bool isUnread;
  final Color avatarBackground;
  final String initials;

  const MessageItemModel({
    required this.name,
    required this.role,
    required this.roleColor,
    required this.preview,
    required this.time,
    required this.isUnread,
    required this.avatarBackground,
    required this.initials,
  });
}
