import 'package:couldai_user_app/features/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class AppColors {
  static const Color primary = Color(0xFF121D30);
  static const Color violetGlow = Color(0xFF9C1FE8);
  static const Color deepIndigo = Color(0xFF0A1545);
  static const Color royalBlue = Color(0xFF224075);
  static const Color cyan = Color(0xFF3DDAD8);
  static const Color rose = Color(0xFFF84FB3);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Dreaming Engine',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: AppColors.primary,
        textTheme: GoogleFonts.interTextTheme(
          ThemeData(brightness: Brightness.dark).textTheme,
        ).copyWith(
          bodyLarge: const TextStyle(color: Colors.white),
          bodyMedium: const TextStyle(color: Colors.white70),
        ),
        colorScheme: const ColorScheme.dark(
          primary: AppColors.primary,
          secondary: AppColors.violetGlow,
          background: AppColors.primary,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
