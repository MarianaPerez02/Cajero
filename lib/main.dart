import 'package:covenantmoneyh/config/routes/app_router.dart';
import 'package:covenantmoneyh/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp((const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner:  false,
      theme: AppTheme().getTheme(),
      routerConfig: appRouter,
    );
  }
}
