import 'package:flutter/material.dart';
import 'package:idgets_app/config/theme/app_theme.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(
        selectedColor:Provider.of<ThemeSelectionProvider>(context).selectedColor,
        ).getTheme(),
      home: Scaffold(
        appBar: AppBar(actions: [
          ElevatedButton(onPressed: (){
            context.read<ThemeSelectionProvider>().change();
          } ,child: Icon(Icons.change_circle_outlined),)
          ],),
        body: Center(
          child: ElevatedButton(
            onPressed: (){},
            child: Text('Hello World!')),
        ),
      ),
    );
  }
}