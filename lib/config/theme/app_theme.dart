import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.teal,
  Colors.black,
  Colors.purple,
  Colors.orange,
  Colors.deepPurple,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, 'selected color must be 0 or greater'),
        assert(selectedColor < colorList.length,
            'selected color must be less than colorList length');

  ThemeData getTheme() => ThemeData(colorSchemeSeed: colorList[selectedColor]);
}

class ThemeSelectionProvider extends ChangeNotifier {
  int _selectedColor = 0;

  int get selectedColor => _selectedColor;

  void change() {
    _selectedColor = (_selectedColor + 1) % colorList.length;
    notifyListeners();
  }
}