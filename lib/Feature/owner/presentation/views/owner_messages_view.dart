import 'package:flutter/material.dart';
import 'package:prime_app/Feature/owner/data/models/message_item_model.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/messages_view_widgets/custom_messages_view_app_bar.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/messages_view_widgets/messages_list_view.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/messages_view_widgets/messages_search_field.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/messages_view_widgets/messages_tabs_row.dart';

class OwnerMessagesView extends StatelessWidget {
  const OwnerMessagesView({super.key});

  @override
  Widget build(BuildContext context) {
    final items = <MessageItemModel>[
      const MessageItemModel(
        name: 'Sarah Jenkins',
        role: 'Teacher',
        roleColor: Color(0xFF1D4ED8),
        preview: 'Hi! Just wanted to share a photo of...',
        time: '2m ago',
        isUnread: true,
        avatarBackground: Color(0xFFFAD7C5),
        initials: 'SJ',
      ),
      const MessageItemModel(
        name: 'James Miller',
        role: 'Manager',
        roleColor: Color(0xFF0F766E),
        preview: 'Reminder: The nursery will be closed on Friday...',
        time: 'Yesterday',
        isUnread: false,
        avatarBackground: Color(0xFFD1D5DB),
        initials: 'JM',
      ),
      const MessageItemModel(
        name: 'Front Desk',
        role: 'Admin',
        roleColor: Color(0xFF6B7280),
        preview: 'Your payment for June has been received.',
        time: 'Tue',
        isUnread: false,
        avatarBackground: Color(0xFFE5E7EB),
        initials: 'FD',
      ),
      const MessageItemModel(
        name: 'Emily Rose',
        role: 'Teacher',
        roleColor: Color(0xFF1D4ED8),
        preview: 'Did Leo forget his blue hat today?',
        time: 'Sun',
        isUnread: true,
        avatarBackground: Color(0xFFFDE2E2),
        initials: 'ER',
      ),
      const MessageItemModel(
        name: 'Nurse Jessica',
        role: 'Health',
        roleColor: Color(0xFFDC2626),
        preview: 'Following up on the allergy form.',
        time: 'Last Week',
        isUnread: false,
        avatarBackground: Color(0xFFDDE7FF),
        initials: 'NJ',
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomMessageViewAppBar(),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
        const MessagesSearchField(),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
        const MessagesTabsRow(),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
        Expanded(child: MessagesListView(items: items)),
      ],
    );
  }
}
