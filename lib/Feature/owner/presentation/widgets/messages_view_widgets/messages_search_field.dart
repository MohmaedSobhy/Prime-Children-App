import 'package:flutter/material.dart';
import 'package:prime_app/core/utils/app_strings.dart';
import 'package:prime_app/core/widgets/text_form_field_widget.dart';

import '../../../../../core/theme/app_colors.dart' show AppColors;

class MessagesSearchField extends StatelessWidget {
  const MessagesSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      filled: true,
      fillColor: AppColors.searchFieldColor,
      hintText: AppString.searchConversations,
      prefix: const Icon(Icons.search, color: AppColors.textFieldHintTextColor),
      contentPadding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * 0.04,
        vertical: MediaQuery.sizeOf(context).height * 0.015,
      ),
    );
  }
}
