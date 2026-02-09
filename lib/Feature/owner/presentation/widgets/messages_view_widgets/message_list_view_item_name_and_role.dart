import 'package:flutter/material.dart';
import 'package:prime_app/Feature/owner/data/models/message_item_model.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class MessageListViewItemNameAndRole extends StatelessWidget {
  const MessageListViewItemNameAndRole({super.key, required this.item});

  final MessageItemModel item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          item.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.lexendSemiBold12(
            context: context,
            fontSize: 14,
          ).copyWith(color: AppColors.dashboardTitleColor),
        ),
        SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * 0.02,
            vertical: MediaQuery.sizeOf(context).height * 0.004,
          ),
          decoration: BoxDecoration(
            color: item.roleColor.withValues(alpha: 0.12),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(
            item.role.toUpperCase(),
            style: AppTextStyles.lexendSemiBold12(
              context: context,
              fontSize: 9,
            ).copyWith(color: item.roleColor),
          ),
        ),
        const Spacer(),
        Text(
          item.time,
          style: AppTextStyles.lexendRegular12(
            context: context,
            fontSize: 10,
          ).copyWith(color: AppColors.dashboardSubTitleColor),
        ),
      ],
    );
  }
}
