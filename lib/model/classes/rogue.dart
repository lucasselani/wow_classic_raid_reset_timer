import 'package:flutter/material.dart';
import 'package:wow_classic_raid_reset_timer/model/wow_class.dart';

class Rogue implements WowClass {
  @override
  MaterialColor color = Colors.amber;

  @override
  String name = 'Rogue';

  @override
  TextColor textColor = TextColor.dark;
}
