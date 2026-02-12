import 'package:flutter/material.dart';
import '../layout/auth_layout.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      title: "Create Account",
      child: Column(
        children: [
          _input("Full Name"),
          const SizedBox(height: 12),
          _input("Email"),
          const SizedBox(height: 12),
          _input("Password", obscure: true),

          const SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/home");
            },
            child: const Text("Sign Up"),
          ),

          const Spacer(),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Already have account?",
                  style: TextStyle(color: Colors.white70)),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/login");
                },
                child: const Text("Login"),
              ),
            ],
          )
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
