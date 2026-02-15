import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'features/start/start_screen.dart';
import 'features/home/home_screen.dart';
import 'features/auth/signup/signup_screen.dart';
import 'features/auth/login/login_screen.dart';
import 'features/room/room_screen.dart';
import 'features/room/live_room_screen.dart';
import 'features/home/widgets/theme_notifier.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: const Free4TalkApp(),
    ),
  );
}

class Free4TalkApp extends StatelessWidget {
  const Free4TalkApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeNotifier>();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Free4Talk',

      /// 🌗 THEME MODE (CONTROLLED BY PROFILE PANEL SWITCH)
      themeMode: theme.currentMode,

      /// ☀️ LIGHT THEME
      theme: ThemeData.light(useMaterial3: true),

      /// 🌙 DARK THEME (FREE4TALK STYLE)
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xff0E1621),
        useMaterial3: true,
      ),

      /// 🟢 FIRST SCREEN
      initialRoute: AppRoutes.start,

      /// 🧭 ALL ROUTES
      routes: {
        AppRoutes.start: (_) => const StartScreen(),
        AppRoutes.signup: (_) => const SignupScreen(),
        AppRoutes.login: (_) => const LoginScreen(),
        AppRoutes.home: (_) => const HomeScreen(),
        AppRoutes.room: (_) => const RoomScreen(),
        AppRoutes.liveRoom: (_) => const LiveRoomScreen(),
      },
    );
  }
}

/// 📍 CENTRAL ROUTES CLASS
class AppRoutes {
  static const start = "/";
  static const signup = "/signup";
  static const login = "/login";
  static const home = "/home";
  static const room = "/room";
  static const liveRoom = "/liveRoom";
}
