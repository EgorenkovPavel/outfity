import 'package:flutter/material.dart';
import 'package:outfity/app/router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:outfity/l10n/app_localizations.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Outfity',
      routerConfig: appRouter,

      onGenerateTitle: (context) =>
      AppLocalizations.of(context)!.appTitle,

      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}