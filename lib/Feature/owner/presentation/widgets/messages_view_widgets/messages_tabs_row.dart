import 'package:flutter/material.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/messages_view_widgets/message_tab_item.dart';

class MessagesTabsRow extends StatelessWidget {
  const MessagesTabsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          MessageTabItem(title: 'All', isSelected: true),
          MessageTabItem(title: 'Unread'),
          MessageTabItem(title: 'Teachers'),
          MessageTabItem(title: 'Admin'),
        ],
      ),
    );
  }
}
