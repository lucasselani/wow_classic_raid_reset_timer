import 'package:flutter/material.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/wow_class.dart';

class Paladin implements WowClass {
  @override
  MaterialColor color = Colors.pink;

  @override
  String name = 'Paladin';

  @override
  TextColor textColor = TextColor.light;
}
