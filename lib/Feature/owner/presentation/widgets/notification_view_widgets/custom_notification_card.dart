import 'package:flutter/material.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/notification_view_widgets/custom_notification_card_leading.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/notification_view_widgets/custom_notification_card_tail.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/notification_view_widgets/custom_notification_card_title_and_subtitle.dart';

class CustomNotificationCard extends StatelessWidget {
  const CustomNotificationCard({
    super.key,
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

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.04),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomNotificationCardLeading(
            icon: icon,
            iconBackground: iconBackground,
            iconColor: iconColor,
            avatarText: avatarText,
            avatarColor: avatarColor,
          ),
          SizedBox(width: MediaQuery.sizeOf(context).width * 0.03),
          Expanded(
            child: CustomNotificationCardTitleAndSubtitle(
              title: title,
              subtitle: subtitle,
            ),
          ),
          SizedBox(width: MediaQuery.sizeOf(context).width * 0.03),
          CustomNotificationCardTail(time: time, isUnread: isUnread),
        ],
      ),
    );
  }
}
