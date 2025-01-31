import 'package:flutter/material.dart';
import 'package:idgets_app/config/theme/app_theme.dart';
import 'package:idgets_app/presentation/screens/home/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( MultiProvider(
    providers:[
    ChangeNotifierProvider(create: (_) => ThemeSelectionProvider())
    ],
      child:  HomeScreen(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}

