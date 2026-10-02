import 'package:flutter/material.dart';
import 'package:outfity/app/router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Outfity',
      routerConfig: appRouter,
    );
  }
}