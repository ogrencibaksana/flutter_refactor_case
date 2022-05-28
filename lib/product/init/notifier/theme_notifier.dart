import 'package:flutter/material.dart';

class ThemeNotifier extends ChangeNotifier {

  ThemeData _currentTheme = ThemeData(primarySwatch: Colors.teal);
  ThemeData get currentTheme => _currentTheme;
  Color get getBackgroundColor => _currentTheme.backgroundColor;

  void changeColor(MaterialColor color){
    _currentTheme = ThemeData(primarySwatch: color);
    notifyListeners();
  }
}