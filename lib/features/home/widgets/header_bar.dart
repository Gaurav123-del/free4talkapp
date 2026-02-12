import 'package:flutter/material.dart';

class HeaderBar extends StatelessWidget {
  const HeaderBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Icon(Icons.public, color: Colors.blue),
              SizedBox(width: 8),
              Text(
                "Free4Talk",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Sign in"),
          ),
        ],
      ),
    );
  }
}
