import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system; // depends in the device theme

  get getThemeMode => _themeMode; // the getter function as a variable

  set setThemeMode(ThemeMode themeMode) {
    _themeMode = themeMode;
    notifyListeners();
  }

  bool get isDarkTheme => (_themeMode == ThemeMode.dark);
}
