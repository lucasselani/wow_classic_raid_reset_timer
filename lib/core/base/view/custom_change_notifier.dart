import 'package:flutter/material.dart';

abstract class CustomChangeNotifier extends ChangeNotifier {
  bool _mounted = true;
  bool get mounted => _mounted;

  @override
  void dispose() {
    super.dispose();
    _mounted = false;
  }

  @override
  void notifyListeners() {
    if (mounted) super.notifyListeners();
  }
}
