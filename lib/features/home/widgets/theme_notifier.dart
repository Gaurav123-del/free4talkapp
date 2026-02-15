import 'package:flutter/material.dart';

class ThemeNotifier extends ChangeNotifier {
  bool _isLight = false;

  bool get isLight => _isLight;

  ThemeMode get currentMode =>
      _isLight ? ThemeMode.light : ThemeMode.dark;

  void toggle(bool value) {
    _isLight = value;
    notifyListeners();
  }
}
