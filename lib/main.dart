import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'config/theme/theme_provider.dart';
import 'config/theme/app_themes.dart';
import 'screens/auth/login_screen.dart';
import 'screens/home/home_screen.dart';
import 'services/auth_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(Duration(milliseconds: 500)); // Имитация инициализации
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => AuthService()),
      ],
      child: const NexusApp(),
    ),
  );
}

class NexusApp extends StatelessWidget {
  const NexusApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final authProvider = Provider.of<AuthService>(context);

    return MaterialApp(
      title: 'Nexus Messenger',
      theme: AppThemes.themes[themeProvider.currentTheme],
      darkTheme: AppThemes.themes[themeProvider.currentTheme],
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: authProvider.isAuthenticated ? const HomeScreen() : const LoginScreen(),
    );
  }
}
