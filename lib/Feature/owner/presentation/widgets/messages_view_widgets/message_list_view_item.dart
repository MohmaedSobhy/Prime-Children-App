import 'package:flutter/material.dart';
import 'package:prime_app/Feature/owner/data/models/message_item_model.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/messages_view_widgets/message_list_view_item_body.dart';

class MessageListViewItem extends StatelessWidget {
  const MessageListViewItem({super.key, required this.item});

  final MessageItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.03),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0A111827),
            blurRadius: 10,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: MessageListViewItemBody(item: item),
    );
  }
}
