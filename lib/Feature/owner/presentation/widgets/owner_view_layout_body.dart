import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prime_app/Feature/owner/presentation/controller/owner_view_layout_cubit/owner_view_layout_cubit.dart';
import 'package:prime_app/Feature/owner/presentation/controller/owner_view_layout_cubit/owner_view_layout_states.dart';

class OwnerViewLayoutBody extends StatelessWidget {
  const OwnerViewLayoutBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = OwnerViewLayoutCubit.get(context);
    return BlocBuilder<OwnerViewLayoutCubit, OwnerViewLayoutStates>(
      builder: (context, state) {
        return cubit.ownerScreens[cubit.currIndex];
      },
    );
  }
}
