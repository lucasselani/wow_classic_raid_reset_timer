import 'package:flutter/material.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/wow_class.dart';

class Warrior implements WowClass {
  @override
  MaterialColor color = Colors.brown;

  @override
  String name = 'Warrior';

  @override
  TextColor textColor = TextColor.light;
}
