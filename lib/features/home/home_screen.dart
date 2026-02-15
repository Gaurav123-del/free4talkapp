// import 'package:flutter/material.dart';
// import 'widgets/header_bar.dart';
// import 'widgets/language_filters.dart';
// import 'widgets/room_card.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xff0E1621),
//       body: SafeArea(
//         child: Column(
//           children: [
//             const HeaderBar(),

//             const SizedBox(height: 10),

//             const Text(
//               "Language Practice Community",
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 26,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             ),

//             const SizedBox(height: 16),

//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16),
//               child: ElevatedButton.icon(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: const Color(0xff2E8AF6),
//                   minimumSize: const Size(double.infinity, 50),
//                 ),
//                 onPressed: () {},
//                 icon: const Icon(Icons.add),
//                 label: const Text("Create a new group"),
//               ),
//             ),

//             const SizedBox(height: 10),

//             const LanguageFilters(),

//             const SizedBox(height: 10),

//             Expanded(
//               child: ListView.builder(
//                 padding: const EdgeInsets.all(16),
//                 itemCount: 5,
//                 itemBuilder: (context, index) {
//                   return const RoomCard();
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'widgets/header_bar.dart';
import 'widgets/language_filters.dart';
import 'widgets/room_card.dart';
import 'widgets/profile_panel.dart';
import 'widgets/top_actions.dart';
import 'widgets/create_group_dialog.dart';
import 'models/room_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const bgColor = Color(0xff0E1621);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  /// 🧠 DYNAMIC ROOM LIST
  List<RoomModel> rooms = [];

  /// 🚀 OPEN CREATE GROUP POPUP
  Future<void> openCreateDialog() async {
    final result = await showDialog(
      context: context,
      builder: (_) => const CreateGroupDialog(),
    );

    if (result != null && result is RoomModel) {
      setState(() {
        rooms.insert(0, result);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HomeScreen.bgColor,

      /// 👈 PROFILE PANEL
      drawer: const ProfilePanel(),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          child: Column(
            children: [

              /// 🔵 HEADER
              const HeaderBar(),

              const SizedBox(height: 24),

              /// 🟣 TITLE
              const Text(
                "Language Practice Community",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 20),

              /// 🔥 TOP ACTIONS (CREATE GROUP BUTTON)
              TopActions(
                onCreateGroup: openCreateDialog,
              ),

              const SizedBox(height: 24),

              const LanguageFilters(),

              const SizedBox(height: 24),

              /// 🎤 ROOM GRID (DYNAMIC)
              RoomGrid(rooms: rooms),
            ],
          ),
        ),
      ),
    );
  }
}
