import 'package:flutter/material.dart';
import 'app_themes.dart';

class ThemeProvider extends ChangeNotifier {
  AppThemeName _currentTheme = AppThemeName.dark;

  AppThemeName get currentTheme => _currentTheme;

  void setTheme(AppThemeName theme) {
    _currentTheme = theme;
    notifyListeners();
  }

  String getCurrentThemeName() {
    return AppThemes.getThemeName(_currentTheme);
  }
}
