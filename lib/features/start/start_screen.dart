// import 'package:flutter/material.dart';
// import '../../core/app_routes.dart'; // 👈 create this file for routes

// class StartScreen extends StatefulWidget {
//   const StartScreen({super.key});

//   @override
//   State<StartScreen> createState() => _StartScreenState();
// }

// class _StartScreenState extends State<StartScreen>
//     with SingleTickerProviderStateMixin {
//   bool isDark = true;

//   late AnimationController _controller;
//   late Animation<double> fadeAnim;
//   late Animation<double> scaleAnim;

//   @override
//   void initState() {
//     super.initState();

//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 900),
//     );

//     fadeAnim = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
//     scaleAnim = Tween<double>(
//       begin: 0.85,
//       end: 1,
//     ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));

//     _controller.forward();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   /// 🎨 Dynamic Theme Colors
//   Color get bg1 => isDark ? const Color(0xff0E1621) : Colors.white;
//   Color get bg2 => isDark ? const Color(0xff101B2B) : const Color(0xffF2F6FA);
//   Color get textColor => isDark ? Colors.white : Colors.black87;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: AnimatedContainer(
//         duration: const Duration(milliseconds: 400),
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [bg1, bg2],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: SafeArea(
//           child: FadeTransition(
//             opacity: fadeAnim,
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 28),
//               child: Column(
//                 children: [
//                   /// 🌙 LIGHT / DARK TOGGLE
//                   Align(
//                     alignment: Alignment.topRight,
//                     child: IconButton(
//                       icon: Icon(
//                         isDark ? Icons.light_mode : Icons.dark_mode,
//                         color: Colors.orange,
//                       ),
//                       onPressed: () {
//                         setState(() {
//                           isDark = !isDark;
//                         });
//                       },
//                     ),
//                   ),

//                   const Spacer(),

//                   /// 🔥 ANIMATED LOGO
//                   ScaleTransition(
//                     scale: scaleAnim,
//                     child: Container(
//                       padding: const EdgeInsets.all(24),
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         gradient: const LinearGradient(
//                           colors: [Colors.orange, Colors.blue],
//                         ),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.orange.withValues(alpha: 0.4),
//                             blurRadius: 30,
//                           ),
//                         ],
//                       ),
//                       child: const Icon(
//                         Icons.record_voice_over,
//                         size: 60,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),

//                   const SizedBox(height: 30),

//                   /// 🟣 APP NAME
//                   Text(
//                     "Free4Talk",
//                     style: TextStyle(
//                       fontSize: 38,
//                       fontWeight: FontWeight.bold,
//                       color: textColor,
//                       letterSpacing: 1,
//                     ),
//                   ),

//                   const SizedBox(height: 12),

//                   Text(
//                     "Improve English speaking with live Hindi & English rooms",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       color: textColor.withValues(alpha: 0.8),
//                       fontSize: 15,
//                     ),
//                   ),

//                   const SizedBox(height: 6),

//                   Text(
//                     "Practice daily conversations with real learners worldwide",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       color: textColor.withValues(alpha: 0.6),
//                       fontSize: 14,
//                     ),
//                   ),

//                   const Spacer(),

//                   /// 🚀 START BUTTON (PRO NAVIGATION)
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.pushNamed(context, AppRoutes.signup);
//                     },
//                     child: Container(
//                       height: 56,
//                       width: double.infinity,
//                       alignment: Alignment.center,
//                       decoration: BoxDecoration(
//                         gradient: const LinearGradient(
//                           colors: [Colors.orange, Colors.blue],
//                         ),
//                         borderRadius: BorderRadius.circular(18),
//                       ),
//                       child: const Text(
//                         "Start Learning",
//                         style: TextStyle(
//                           fontSize: 17,
//                           fontWeight: FontWeight.w600,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),

//                   const SizedBox(height: 30),

//                   Text(
//                     "Speak • Learn • Connect",
//                     style: TextStyle(color: textColor.withValues(alpha: 0.5)),
//                   ),

//                   const SizedBox(height: 20),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import '../../core/app_routes.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen>
    with SingleTickerProviderStateMixin {
  bool isDark = true;

  late AnimationController _controller;
  late Animation<double> fadeAnim;
  late Animation<double> scaleAnim;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );

    fadeAnim = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    scaleAnim = Tween<double>(
      begin: 0.85,
      end: 1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  /// 🎨 ROYAL COLOR SYSTEM
  static const royalBlue = Color.fromARGB(255, 43, 86, 216);
  static const royalOrange = Color.fromARGB(255, 255, 251, 0);

  Color get bg1 =>
      isDark ? const Color.fromARGB(255, 0, 0, 0) : const Color(0xffEAF2FF);
  Color get bg2 =>
      isDark ? const Color.fromARGB(255, 0, 0, 0) : const Color(0xffFFFFFF);
  Color get textColor => isDark ? Colors.white : Colors.black87;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [bg1, bg2],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: FadeTransition(
            opacity: fadeAnim,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                children: [
                  /// 🌙 TOGGLE
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: Icon(
                        isDark ? Icons.light_mode : Icons.dark_mode,
                        color: royalOrange,
                      ),
                      onPressed: () {
                        setState(() {
                          isDark = !isDark;
                        });
                      },
                    ),
                  ),

                  const Spacer(),

                  /// 🔥 ROYAL GLOW LOGO
                  ScaleTransition(
                    scale: scaleAnim,
                    child: Container(
                      padding: const EdgeInsets.all(26),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: const LinearGradient(
                          colors: [royalOrange, royalBlue],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: royalBlue.withValues(alpha: 0.35),
                            blurRadius: 40,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.record_voice_over,
                        size: 64,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  const SizedBox(height: 32),

                  /// 🟣 TITLE
                  Text(
                    "Free4Talk",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: textColor,
                      letterSpacing: 1.2,
                    ),
                  ),

                  const SizedBox(height: 14),

                  Text(
                    "Improve English speaking with live Hindi & English rooms",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: textColor.withValues(alpha: 0.85),
                      fontSize: 15,
                    ),
                  ),

                  const SizedBox(height: 6),

                  Text(
                    "Practice daily conversations with real learners worldwide",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: textColor.withValues(alpha: 0.65),
                      fontSize: 14,
                    ),
                  ),

                  const Spacer(),

                  /// 🚀 ROYAL START BUTTON
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.signup);
                    },
                    child: Container(
                      height: 58,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [royalOrange, royalBlue],
                        ),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: royalOrange.withValues(alpha: 0.4),
                            blurRadius: 20,
                          ),
                        ],
                      ),
                      child: const Text(
                        "Start Learning",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  Text(
                    "Speak • Learn • Connect",
                    style: TextStyle(
                      color: textColor.withValues(alpha: 0.5),
                    ),
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
