import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prime_app/Feature/owner/presentation/controller/owner_view_layout_cubit/owner_view_layout_states.dart';
import 'package:prime_app/Feature/owner/presentation/views/nurseries_view.dart';
import 'package:prime_app/Feature/owner/presentation/views/owner_notifications_view.dart';
import 'package:prime_app/Feature/owner/presentation/views/owner_dashboared_view.dart';
import 'package:prime_app/Feature/owner/presentation/views/owner_messages_view.dart';
import 'package:prime_app/Feature/owner/presentation/views/owner_profile_view.dart';

class OwnerViewLayoutCubit extends Cubit<OwnerViewLayoutStates> {
  OwnerViewLayoutCubit() : super(OwnerViewLayoutInitial());

  static OwnerViewLayoutCubit get(BuildContext context) =>
      BlocProvider.of(context);

  final List<Widget> ownerScreens = [
    const OwnerDashboaredView(),
    const NurseriesView(),
    const OwnerMessagesView(),
    const OwnerNotificationsView(),
    const OwnerProfileView(),
  ];
  int currIndex = 0;
  void changeIndex(int index) {
    currIndex = index;
    log(currIndex.toString());
    emit(ChangeOwnerViewLayoutState());
  }
}
