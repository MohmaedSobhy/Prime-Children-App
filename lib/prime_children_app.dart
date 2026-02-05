import 'package:flutter/material.dart';
import 'package:prime_app/core/routes/app_route.dart';
import 'package:prime_app/core/theme/app_theme.dart';
import 'package:prime_app/l10n/app_localizations.dart';

class PrimeChildrenApp extends StatelessWidget {
  const PrimeChildrenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: AppString.of(context).appTitle,
      theme: AppTheme.lightTheme,
      locale: const Locale('en'),
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      initialRoute: AppRoute.splashScreen,
      onGenerateRoute: AppRoute.onGenerateRoute,
    );
  }
}
