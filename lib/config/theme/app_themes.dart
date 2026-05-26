import 'package:flutter/material.dart';

enum AppThemeName {
  light,
  dark,
  ocean,
  forest,
  sunset,
}

class AppThemes {
  static final Map<AppThemeName, ThemeData> themes = {
    AppThemeName.light: ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: ColorScheme.light(
        primary: Colors.blue.shade600,
        secondary: Colors.blue.shade400,
        surface: Colors.white,
        background: Colors.grey.shade50,
        error: Colors.red.shade400,
      ),
      scaffoldBackgroundColor: Colors.grey.shade50,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.black87,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      listTileTheme: ListTileThemeData(
        tileColor: Colors.white,
        selectedTileColor: Colors.blue.shade50,
      ),
    ),
    AppThemeName.dark: ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.dark(
        primary: Colors.blue.shade300,
        secondary: Colors.blue.shade200,
        surface: Colors.grey.shade900,
        background: Colors.grey.shade900,
        error: Colors.red.shade300,
      ),
      scaffoldBackgroundColor: Colors.grey.shade900,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.grey.shade850,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    AppThemeName.ocean: ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.dark(
        primary: Color(0xFF006994),
        secondary: Color(0xFF00BCD4),
        surface: Color(0xFF0A1628),
        background: Color(0xFF0A1628),
        error: Color(0xFFEF5350),
      ),
      scaffoldBackgroundColor: Color(0xFF0A1628),
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xFF0D1F2D),
      ),
    ),
    AppThemeName.forest: ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.dark(
        primary: Color(0xFF2E7D32),
        secondary: Color(0xFF66BB6A),
        surface: Color(0xFF1B3A1B),
        background: Color(0xFF1B3A1B),
        error: Color(0xFFE57373),
      ),
      scaffoldBackgroundColor: Color(0xFF1B3A1B),
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xFF1E4620),
      ),
    ),
    AppThemeName.sunset: ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.dark(
        primary: Color(0xFFFF6F00),
        secondary: Color(0xFFFFB74D),
        surface: Color(0xFF3E2723),
        background: Color(0xFF3E2723),
        error: Color(0xFFFF5252),
      ),
      scaffoldBackgroundColor: Color(0xFF3E2723),
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xFF5D4037),
      ),
    ),
  };

  static String getThemeName(AppThemeName theme) {
    switch (theme) {
      case AppThemeName.light:
        return 'Light';
      case AppThemeName.dark:
        return 'Dark';
      case AppThemeName.ocean:
        return 'Ocean';
      case AppThemeName.forest:
        return 'Forest';
      case AppThemeName.sunset:
        return 'Sunset';
    }
  }
}
