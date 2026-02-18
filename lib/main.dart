import 'package:cartify/navigation/routes.dart';
import 'package:cartify/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// STEP 1: Wrap app with ProviderScope
/// Riverpod needs a ProviderScope at the root to manage state.
/// This wraps the entire app and provides the provider system.
/// 
/// What this does:
/// ProviderScope initialises Riverpod and makes providers available throughout the app
/// It's placed at the root so all widgets can access providers
/// It also ensures that providers are properly disposed when the app is closed

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme: lightMode,
    );
  }
}