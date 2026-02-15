// import 'package:flutter/material.dart';

// class RoomCard extends StatelessWidget {
//   const RoomCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 14),
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: const Color(0xff1B2634),
//         borderRadius: BorderRadius.circular(16),
//         border: Border.all(color: Colors.blueAccent),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: const [
//           Text(
//             "English - Upper Intermediate",
//             style: TextStyle(color: Colors.white, fontSize: 16),
//           ),
//           SizedBox(height: 6),
//           Text(
//             "God's Existence (Live Discussion)",
//             style: TextStyle(color: Colors.blueAccent),
//           ),
//           SizedBox(height: 12),
//           Row(
//             children: [
//               CircleAvatar(radius: 18),
//               SizedBox(width: 8),
//               CircleAvatar(radius: 18),
//               SizedBox(width: 8),
//               CircleAvatar(radius: 18),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../models/room_model.dart';
import '../../../core/app_routes.dart';

class RoomGrid extends StatelessWidget {
  final List<RoomModel> rooms;

  const RoomGrid({super.key, required this.rooms});

  static const royalBlue = Color(0xff4169E1);

  @override
  Widget build(BuildContext context) {
    /// 🟡 SHOW MESSAGE IF NO ROOMS
    if (rooms.isEmpty) {
      return const Center(
        child: Text(
          "No groups yet. Create one!",
          style: TextStyle(color: Colors.white54),
        ),
      );
    }

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: rooms.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 14,
        mainAxisSpacing: 14,
        childAspectRatio: 1.1,
      ),
      itemBuilder: (context, index) {
        final room = rooms[index];

        return RoomCard(room: room);
      },
    );
  }
}

class RoomCard extends StatelessWidget {
  final RoomModel room;

  const RoomCard({super.key, required this.room});

  static const royalBlue = Color(0xff4169E1);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.room);
      },
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: const Color(0xff1B2634),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(color: royalBlue.withValues(alpha: 0.2), blurRadius: 18),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// 🌐 LANGUAGE + LEVEL
            Row(
              children: [
                const Icon(Icons.public, size: 18, color: Colors.white),
                const SizedBox(width: 6),
                Text(
                  "${room.language}  ${room.level}",
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),

            const Spacer(),

            /// 🟦 TOPIC
            Center(
              child: Text(
                room.topic,
                style: const TextStyle(
                  color: royalBlue,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
