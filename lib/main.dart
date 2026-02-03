import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prime_app/core/services/bloc_observer.dart';
import 'package:prime_app/core/services/get_it_services.dart';
import 'package:prime_app/prime_children_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await GetItServices.setup();

  runApp(const PrimeChildrenApp());
}
