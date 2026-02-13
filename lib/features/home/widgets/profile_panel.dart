import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfilePanel extends StatefulWidget {
  const ProfilePanel({super.key});

  @override
  State<ProfilePanel> createState() => _ProfilePanelState();
}

class _ProfilePanelState extends State<ProfilePanel> {
  static const royalBlue = Color(0xff4169E1);

  bool isLightTheme = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xff1B2634),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// 🔵 AVATAR
              const Center(
                child: CircleAvatar(
                  radius: 36,
                  backgroundColor: royalBlue,
                  child: Text(
                    "G",
                    style: TextStyle(fontSize: 28, color: Colors.white),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              /// USER INFO
              Row(
                children: [
                  const Text("ID: AMC20IG9MNHP",
                      style: TextStyle(color: Colors.white70)),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Clipboard.setData(
                          const ClipboardData(text: "AMC20IG9MNHP"));

                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("ID Copied")),
                      );
                    },
                    child: const Text(
                      "Copy ID",
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),
              const Text("Name: Gaurav Kumar Raju",
                  style: TextStyle(color: Colors.white70)),
              const SizedBox(height: 6),
              const Text("Email: gauravkumarrraju1@gmail.com",
                  style: TextStyle(color: Colors.white70)),

              const SizedBox(height: 8),

              const Text(
                "Followers: 0   Friends: 0   Following: 0",
                style: TextStyle(color: Colors.white54),
              ),

              const SizedBox(height: 10),

              const Text(
                "Created At: 02/12/2026 11:00 PM",
                style: TextStyle(color: Colors.white38),
              ),

              const Divider(height: 30, color: Colors.white24),

              /// 🔥 MENU ITEMS
              _item(context, Icons.person_outline, "My Profile", () {
                Navigator.pop(context);
                debugPrint("Go to profile screen");
              }),

              _item(context, Icons.settings_outlined,
                  "Supporter Settings", () {
                Navigator.pop(context);
              }),

              const SizedBox(height: 10),

              /// 🌙 LIGHT THEME SWITCH (WORKING)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.light_mode_outlined,
                          color: Colors.white70),
                      SizedBox(width: 10),
                      Text("Light Theme",
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  Switch(
                    value: isLightTheme,
                    activeColor: royalBlue,
                    onChanged: (v) {
                      setState(() {
                        isLightTheme = v;
                      });
                    },
                  )
                ],
              ),

              _item(context, Icons.block, "Self-Ban Account", () {}),
              _item(context, Icons.delete_outline, "Delete Account", () {}),

              _item(context, Icons.logout, "Logout", () {
                Navigator.pop(context);
                debugPrint("Logout clicked");
              }),

              const Spacer(),

              const Center(
                child: Text(
                  "Version 5.6.0 build 9",
                  style: TextStyle(color: Colors.white38),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// 🔘 MENU ITEM BUILDER (NOW CLICKABLE)
  static Widget _item(
    BuildContext context,
    IconData icon,
    String text,
    VoidCallback onTap,
  ) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            Icon(icon, color: Colors.white70),
            const SizedBox(width: 10),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
