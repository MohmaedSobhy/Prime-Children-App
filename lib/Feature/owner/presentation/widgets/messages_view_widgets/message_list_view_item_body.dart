import 'package:flutter/material.dart';
import 'package:prime_app/Feature/owner/data/models/message_item_model.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/messages_view_widgets/message_list_view_item_avatar.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/messages_view_widgets/message_list_view_item_message_preview.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/messages_view_widgets/message_list_view_item_name_and_role.dart';
import 'package:prime_app/core/theme/app_colors.dart';

class MessageListViewItemBody extends StatelessWidget {
  const MessageListViewItemBody({super.key, required this.item});

  final MessageItemModel item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MessageListViewItemAvatar(
          initials: item.initials,
          backgroundColor: item.avatarBackground,
          showOnline: item.isUnread,
        ),
        SizedBox(width: MediaQuery.sizeOf(context).width * 0.03),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MessageListViewItemNameAndRole(item: item),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.006),
              MessageListViewItemMessagePreview(item: item),
            ],
          ),
        ),
        SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),
        if (item.isUnread)
          const Icon(Icons.done_all, color: AppColors.primaryColor, size: 18)
        else
          const Icon(Icons.done, color: Color(0xFFCBD5E1), size: 18),
      ],
    );
  }
}
