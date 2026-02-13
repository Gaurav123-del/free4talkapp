// import 'package:flutter/material.dart';

// class HeaderBar extends StatelessWidget {
//   const HeaderBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             children: const [
//               Icon(Icons.public, color: Colors.blue),
//               SizedBox(width: 8),
//               Text(
//                 "Free4Talk",
//                 style: TextStyle(color: Colors.white, fontSize: 18),
//               ),
//             ],
//           ),
//           ElevatedButton(
//             onPressed: () {},
//             child: const Text("Sign in"),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class HeaderBar extends StatelessWidget {
  const HeaderBar({super.key});

  static const royalBlue = Color(0xff4169E1);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        /// 🔵 LEFT SIDE (MENU + LOGO)
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                /// 👈 OPEN PROFILE PANEL
                Scaffold.of(context).openDrawer();
              },
            ),

            const SizedBox(width: 6),

            const Icon(Icons.public, color: royalBlue),
            const SizedBox(width: 8),

            const Text(
              "Free4Talk",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ],
        ),

        /// 🟣 RIGHT SIDE (PROFILE BADGE)
        GestureDetector(
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: royalBlue),
              color: royalBlue.withValues(alpha: 0.08),
            ),
            child: const Row(
              children: [
                CircleAvatar(
                  radius: 12,
                  backgroundColor: royalBlue,
                  child: Text(
                    "G",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  "Gaurav Kumar Raju",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 4),
                Icon(Icons.keyboard_arrow_down,
                    color: Colors.white70, size: 18),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
