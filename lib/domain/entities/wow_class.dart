import 'package:flutter/material.dart';

enum TextColor {
  light,
  dark,
}

abstract class WowClass {
  String name;
  MaterialColor color;
  TextColor textColor;
}
