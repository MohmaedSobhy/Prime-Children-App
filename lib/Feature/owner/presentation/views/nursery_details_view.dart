import 'package:flutter/material.dart';

import 'package:prime_app/Feature/owner/presentation/widgets/nursery_details_view_widgets/nursery_details_view_body.dart';

class NurseryDetailsView extends StatelessWidget {
  const NurseryDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F9),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * 0.05,
            vertical: MediaQuery.sizeOf(context).height * 0.025,
          ),
          child: NurseryDetailsViewBody(),
        ),
      ),
    );
  }
}
