import 'package:flutter/material.dart';
import '../layout/auth_layout.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      title: "Welcome Back",
      child: Column(
        children: [
          _input("Email"),
          const SizedBox(height: 12),
          _input("Password", obscure: true),

          const SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/home");
            },
            child: const Text("Login"),
          ),

          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, "/forgot-password");
            },
            child: const Text("Forgot Password?"),
          ),
        ],
      ),
    );
  }

  Widget _input(String hint, {bool obscure = false}) {
    return TextField(
      obscureText: obscure,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: const Color(0xff1B2634),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
