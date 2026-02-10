import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prime_app/Feature/owner/presentation/controller/owner_view_layout_cubit/owner_view_layout_cubit.dart';
import 'package:prime_app/Feature/owner/presentation/controller/owner_view_layout_cubit/owner_view_layout_states.dart';
import 'package:prime_app/core/theme/app_colors.dart';
import 'package:prime_app/core/utils/app_strings.dart';
import 'package:prime_app/core/utils/app_text_styles.dart';

class CustomOwnerBottomNavigationBar extends StatelessWidget {
  const CustomOwnerBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = OwnerViewLayoutCubit.get(context);
    return BlocBuilder<OwnerViewLayoutCubit, OwnerViewLayoutStates>(
      builder: (context, state) {
        return BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: cubit.currIndex,
          onTap: (value) => cubit.changeIndex(value),
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: const Color(0xff9CA3AF),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: AppTextStyles.lexendMedium16(
            context: context,
            fontSize: 10,
          ).copyWith(color: AppColors.primaryColor),
          unselectedLabelStyle: AppTextStyles.lexendMedium16(
            context: context,
            fontSize: 10,
          ).copyWith(color: AppColors.unselectedItemColor),
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.dashboard),
              label: AppString.dashboard,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.shop),
              label: AppString.nurseries,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.messenger),
              label: AppString.messages,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.notifications),
              label: AppString.notifications,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.person),
              label: AppString.profile,
            ),
          ],
        );
      },
    );
  }
}
