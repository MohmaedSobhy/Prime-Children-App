import 'package:flutter/material.dart';
import 'package:prime_app/Feature/owner/data/models/message_item_model.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class MessageListViewItemMessagePreview extends StatelessWidget {
  const MessageListViewItemMessagePreview({super.key, required this.item});

  final MessageItemModel item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            item.preview,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.lexendRegular12(
              context: context,
              fontSize: 12,
            ).copyWith(color: AppColors.dashboardSubTitleColor),
          ),
        ),
      ],
    );
  }
}
