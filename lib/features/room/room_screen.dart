import 'package:flutter/material.dart';
import '../../core/app_routes.dart';

class RoomScreen extends StatelessWidget {
  const RoomScreen({super.key});

  static const bgColor = Color(0xff0E1621);
  static const royalBlue = Color(0xff4169E1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,

        /// 🚀 GO TO LIVE ROOM
        onTap: () {
          Navigator.pushNamed(context, AppRoutes.liveRoom);
        },

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const Text(
                "Hi, Gaurav Kumar Raju",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 24),

              /// 🔵 AVATAR
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: royalBlue.withValues(alpha: 0.4),
                      blurRadius: 40,
                    ),
                  ],
                ),
                child: const CircleAvatar(
                  radius: 60,
                  backgroundColor: royalBlue,
                  child: Text(
                    "G",
                    style: TextStyle(
                      fontSize: 48,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 26),

              const Text(
                "Click on anywhere to start",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
