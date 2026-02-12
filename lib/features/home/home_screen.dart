import 'package:flutter/material.dart';
import 'widgets/header_bar.dart';
import 'widgets/language_filters.dart';
import 'widgets/room_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0E1621),
      body: SafeArea(
        child: Column(
          children: [
            const HeaderBar(),

            const SizedBox(height: 10),

            const Text(
              "Language Practice Community",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 16),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff2E8AF6),
                  minimumSize: const Size(double.infinity, 50),
                ),
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text("Create a new group"),
              ),
            ),

            const SizedBox(height: 10),

            const LanguageFilters(),

            const SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const RoomCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
