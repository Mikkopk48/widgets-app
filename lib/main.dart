import 'package:flutter/material.dart';
import 'package:idgets_app/config/router/app_router.dart';
import 'package:idgets_app/config/theme/app_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( MultiProvider(
    providers:[
    ChangeNotifierProvider(create: (_) => ThemeSelectionProvider())
    ],
      child: MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme(
        selectedColor:Provider.of<ThemeSelectionProvider>(context).selectedColor,
        ).getTheme(),
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,

    );
  }
}

