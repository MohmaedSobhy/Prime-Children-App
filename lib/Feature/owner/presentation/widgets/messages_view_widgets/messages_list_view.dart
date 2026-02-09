import 'package:flutter/material.dart';
import 'package:prime_app/Feature/owner/data/models/message_item_model.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/messages_view_widgets/message_list_view_item.dart';

class MessagesListView extends StatelessWidget {
  const MessagesListView({super.key, required this.items});

  final List<MessageItemModel> items;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: items.length,
      separatorBuilder: (_, _) =>
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
      itemBuilder: (context, index) => MessageListViewItem(item: items[index]),
    );
  }
}
