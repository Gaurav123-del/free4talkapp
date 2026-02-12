import 'package:flutter/material.dart';

class CallbackScreen extends StatelessWidget {
  const CallbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      if (!context.mounted) return; // ✅ safe check
      Navigator.pushNamed(context, "/home");
    });

    return const Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}

