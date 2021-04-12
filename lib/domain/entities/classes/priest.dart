import 'package:flutter/material.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/wow_class.dart';

class Priest implements WowClass {
  @override
  MaterialColor color = MaterialColor(0xFFFFFFFF, {
    50: const Color(0xFFFFFFFF),
    100: const Color(0xFFFFFFFF),
    200: const Color(0xFFFFFFFF),
    300: const Color(0xFFFFFFFF),
    400: const Color(0xFFFFFFFF),
    500: const Color(0xFFFFFFFF),
    600: const Color(0xFFFFFFFF),
    700: const Color(0xFFFFFFFF),
    800: const Color(0xFFFFFFFF),
    900: const Color(0xFFFFFFFF),
  });

  @override
  String name = 'Priest';

  @override
  TextColor textColor = TextColor.dark;
}
