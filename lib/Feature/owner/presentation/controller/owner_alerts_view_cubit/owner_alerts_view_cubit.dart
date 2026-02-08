import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prime_app/Feature/owner/presentation/controller/owner_alerts_view_cubit/owner_alerts_view_states.dart';

class OwnerAlertsViewCubit extends Cubit<OwnerAlertsViewStates> {
  OwnerAlertsViewCubit() : super(OwnerAlertsViewInitial());

  static OwnerAlertsViewCubit get(BuildContext context) =>
      BlocProvider.of(context);

  int selectedTabIndex = 2;

  void changeTab(int index) {
    selectedTabIndex = index;
    emit(ChangeOwnerAlertsTabState());
  }
}
