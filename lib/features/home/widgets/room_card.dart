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
import '../../../core/app_routes.dart';

class RoomGrid extends StatelessWidget {
  const RoomGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 6,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 14,
        mainAxisSpacing: 14,
        childAspectRatio: 1.1,
      ),
      itemBuilder: (context, index) {
        return const RoomCard();
      },
    );
  }
}

class RoomCard extends StatelessWidget {
  const RoomCard({super.key});

  static const royalBlue = Color(0xff4169E1);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        /// 👉 CLICK ANY CARD GO NEXT SCREEN
        Navigator.pushNamed(context, AppRoutes.home);
      },
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: const Color(0xff1B2634),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: royalBlue.withValues(alpha: 0.2),
              blurRadius: 18,
            ),
          ],
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.public, size: 18),
                SizedBox(width: 6),
                Text("English  Beginner"),
              ],
            ),
            Spacer(),
            Center(
              child: Text(
                "Join and talk now!",
                style: TextStyle(color: royalBlue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
