import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.amber,
  Colors.red,
  Colors.blue,
  Colors.green,
  Colors.grey,
  Colors.pink,
  Colors.purple,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    : assert(
        selectedColor >= 0 && selectedColor < colorList.length,
        'Selected color must be greater than 0 and less than ${colorList.length - 1}',
      );
  ThemeData getTheme() => ThemeData(
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: const AppBarTheme(
      centerTitle: false
    ),
    
  );
}
