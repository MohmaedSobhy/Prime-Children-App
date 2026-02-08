import 'package:flutter/material.dart';

class OwnerNotificationModel {
  const OwnerNotificationModel({required this.title, required this.items});

  final String title;
  final List<NotificationItem> items;
}

class NotificationItem {
  const NotificationItem({
    required this.title,
    required this.subtitle,
    required this.time,
    required this.icon,
    required this.iconBackground,
    required this.iconColor,
    required this.isUnread,
    this.avatarText,
    this.avatarColor,
  });

  final String title;
  final String subtitle;
  final String time;
  final IconData icon;
  final Color iconBackground;
  final Color iconColor;
  final bool isUnread;
  final String? avatarText;
  final Color? avatarColor;
}
