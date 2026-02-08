import 'package:flutter/material.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/notification_view_widgets/custom_notification_view_alerts_tabs_item.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_strings.dart';

class CustomNotificationsViewAlertsTabs extends StatelessWidget {
  const CustomNotificationsViewAlertsTabs({
    super.key,
    required this.selectedIndex,
    required this.onChanged,
  });

  final int selectedIndex;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.01),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.textFieldBorderColor),
      ),
      child: Row(
        children: [
          CustomNotificationViewAlertsTabsItem(
            title: AppString.system,
            isSelected: selectedIndex == 0,
            onTap: () => onChanged(0),
          ),
          CustomNotificationViewAlertsTabsItem(
            title: AppString.messages,
            isSelected: selectedIndex == 1,
            onTap: () => onChanged(1),
          ),
          CustomNotificationViewAlertsTabsItem(
            title: AppString.items,
            isSelected: selectedIndex == 2,
            onTap: () => onChanged(2),
          ),
        ],
      ),
    );
  }
}
