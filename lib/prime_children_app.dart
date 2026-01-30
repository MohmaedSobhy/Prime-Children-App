import 'package:flutter/material.dart';
import 'package:prime_app/core/theme/app_theme.dart';
import 'package:prime_app/l10n/app_localizations.dart';

class PrimeChildrenApp extends StatelessWidget {
  const PrimeChildrenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prime Children App',
      theme: AppTheme.lightTheme,
      locale: Locale('ar'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      home: const Scaffold(
        body: Center(child: Text('Welcome to the Prime Children App!')),
      ),
    );
  }
}
