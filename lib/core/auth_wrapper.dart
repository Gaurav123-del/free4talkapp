import 'package:flutter/material.dart';
import '../features/auth/login/login_screen.dart';
import '../features/home/home_screen.dart';

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {

    /// pretend we check login state here
    final bool isLoggedIn = DateTime.now().second % 2 == 0;

    if (isLoggedIn) {
      return const HomeScreen();
    }

    return const LoginScreen();
  }
}
