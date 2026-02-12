import 'package:flutter/material.dart';

class RoomCard extends StatelessWidget {
  const RoomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xff1B2634),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.blueAccent),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "English - Upper Intermediate",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          SizedBox(height: 6),
          Text(
            "God's Existence (Live Discussion)",
            style: TextStyle(color: Colors.blueAccent),
          ),
          SizedBox(height: 12),
          Row(
            children: [
              CircleAvatar(radius: 18),
              SizedBox(width: 8),
              CircleAvatar(radius: 18),
              SizedBox(width: 8),
              CircleAvatar(radius: 18),
            ],
          ),
        ],
      ),
    );
  }
}
