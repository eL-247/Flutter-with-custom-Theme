import 'package:flutter/material.dart';

class ThemeManager with ChangeNotifier {
  ThemeMode _thememode = ThemeMode.light;

  ThemeMode get thememode => _thememode;

  toggleTheme(bool isDark) {
    _thememode = isDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
