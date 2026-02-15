import 'package:flutter/material.dart';

class LiveRoomScreen extends StatelessWidget {
  const LiveRoomScreen({super.key});

  static const bgColor = Color(0xff0E1621);
  static const royalBlue = Color(0xff4169E1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(
        children: [

          /// 🎙 TOP CONTROL BAR
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  _TopBtn(Icons.mic_off, Colors.blue),
                  _TopBtn(Icons.videocam_off, Colors.blue),
                  _TopBtn(Icons.network_cell, Colors.white),
                  _TopBtn(Icons.call_end, Colors.red),
                ],
              ),
            ),
          ),

          /// 👥 USERS GRID
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                _UserTile("G", Colors.orange, "initializing"),
                SizedBox(width: 8),
                _UserTile("GK", Colors.green, "UNVERIFIED"),
              ],
            ),
          ),

          /// 📱 RIGHT SIDE MENU
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 60,
              color: const Color(0xff1B2634),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.chat, color: Colors.white70),
                  SizedBox(height: 20),
                  Icon(Icons.hub, color: Colors.white70),
                  SizedBox(height: 20),
                  Icon(Icons.grid_view, color: Colors.white70),
                  SizedBox(height: 20),
                  Icon(Icons.settings, color: Colors.white70),
                  SizedBox(height: 20),
                  Icon(Icons.fullscreen, color: Colors.white70),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// 🔵 TOP BUTTON
class _TopBtn extends StatelessWidget {
  final IconData icon;
  final Color color;

  const _TopBtn(this.icon, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(icon, color: color),
    );
  }
}

/// 🧩 USER TILE
class _UserTile extends StatelessWidget {
  final String text;
  final Color color;
  final String status;

  const _UserTile(this.text, this.color, this.status);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 38,
              color: Colors.white,
            ),
          ),
          Text(
            status,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
