import 'package:flutter/material.dart';
import 'package:prime_app/Feature/owner/data/models/owner_notification_model.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/notification_view_widgets/custom_notification_card.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class CustomNotificationCardListBuilder extends StatelessWidget {
  const CustomNotificationCardListBuilder({super.key, required this.sections});
  final OwnerNotificationModel sections;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'New',
          style: AppTextStyles.lexendBold40(
            context: context,
            fontSize: 12,
          ).copyWith(color: AppColors.dashboardSubTitleColor),
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.025),

        ListView.builder(
          itemCount: sections.items.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.sizeOf(context).height * 0.015,
              ),
              child: CustomNotificationCard(
                icon: sections.items[index].icon,
                iconBackground: sections.items[index].iconBackground,
                iconColor: sections.items[index].iconColor,
                title: sections.items[index].title,
                subtitle: sections.items[index].subtitle,
                time: sections.items[index].time,
                isUnread: sections.items[index].isUnread,
                avatarText: sections.items[index].avatarText,
                avatarColor: sections.items[index].avatarColor,
              ),
            );
          },
        ),
      ],
    );
  }
}
