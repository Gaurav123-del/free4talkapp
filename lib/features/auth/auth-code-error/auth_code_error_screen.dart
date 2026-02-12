import 'package:flutter/material.dart';

class AuthCodeErrorScreen extends StatelessWidget {
  const AuthCodeErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0E1621),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, "/login");
          },
          child: const Text("Verification Failed. Go to Login"),
        ),
      ),
    );
  }
}
