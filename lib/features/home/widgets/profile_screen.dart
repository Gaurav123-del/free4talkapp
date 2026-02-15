import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Profile")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: const [
            TextField(
              decoration: InputDecoration(labelText: "Name"),
            ),
            SizedBox(height: 12),
            TextField(
              decoration: InputDecoration(labelText: "Email"),
            ),
          ],
        ),
      ),
    );
  }
}
