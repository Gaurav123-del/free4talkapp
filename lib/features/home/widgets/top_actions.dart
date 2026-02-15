import 'package:flutter/material.dart';

class TopActions extends StatelessWidget {
  final Future<void> Function() onCreateGroup;

  const TopActions({super.key, required this.onCreateGroup});

  static const royalBlue = Color(0xff4169E1);
  static const royalOrange = Color(0xffFFB800);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// 🔵 TOP BUTTON ROW
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            GestureDetector(
              onTap: onCreateGroup,
              child: _mainBtn("+  Create a new group", royalBlue),
            ),
            GestureDetector(
              onTap: onCreateGroup,
              child: _mainBtn("☕  Buy me a coffee", royalOrange),
            ),
          ],
        ),

        const SizedBox(height: 14),

        /// 🟣 SECOND ROW
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            _darkBtn("Privacy Policy"),
            _darkBtn("Contact Us"),
            _darkBtn("Instagram Group"),
          ],
        ),

        const SizedBox(height: 16),

        /// 🔎 SEARCH BAR
        TextField(
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: "Search for Language, Level, Topic, Username...",
            hintStyle: const TextStyle(color: Colors.white54),
            filled: true,
            fillColor: const Color(0xff1B2634),
            suffixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: royalBlue),
            ),
          ),
        ),
      ],
    );
  }

  /// 🔵 BLUE BUTTON
  static Widget _mainBtn(String text, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(text, style: const TextStyle(color: Colors.white)),
    );
  }

  /// ⚫ DARK BUTTON
  static Widget _darkBtn(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xff1B2634),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(text, style: const TextStyle(color: Colors.white)),
    );
  }
}
