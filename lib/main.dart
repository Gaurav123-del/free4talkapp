import 'package:flutter/material.dart';

import 'features/start/start_screen.dart';
import 'features/home/home_screen.dart';
import 'features/auth/signup/signup_screen.dart';
import 'features/auth/login/login_screen.dart';

void main() {
  runApp(const Free4TalkApp());
}

class Free4TalkApp extends StatelessWidget {
  const Free4TalkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Free4Talk',

      /// 🌙 DARK THEME
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xff0E1621),
        useMaterial3: true,
      ),

      /// 🟢 FIRST SCREEN
      initialRoute: AppRoutes.start,

      /// 🧭 ALL ROUTES HERE (PRO STRUCTURE)
      routes: {
        AppRoutes.start: (_) => const StartScreen(),
        AppRoutes.signup: (_) => const SignupScreen(),
        AppRoutes.login: (_) => const LoginScreen(),
        AppRoutes.home: (_) => const HomeScreen(),
      },
    );
  }
}

/// 📍 CENTRAL ROUTES CLASS (BEST PRACTICE)
class AppRoutes {
  static const start = "/";
  static const signup = "/signup";
  static const login = "/login";
  static const home = "/home";
}
