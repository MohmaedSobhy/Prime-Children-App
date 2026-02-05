import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prime_app/Feature/owner/presentation/controller/owner_view_layout_cubit/owner_view_layout_cubit.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/custom_owner_bottom_navigation_bar.dart';
import 'package:prime_app/Feature/owner/presentation/widgets/owner_view_layout_body.dart';

class OwnerViewLayout extends StatelessWidget {
  const OwnerViewLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OwnerViewLayoutCubit(),
      child: const Scaffold(
        backgroundColor: Color(0xffF6F6F8),
        body: OwnerViewLayoutBody(),
        bottomNavigationBar: CustomOwnerBottomNavigationBar(),
      ),
    );
  }
}
