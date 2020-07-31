import 'package:flutter/material.dart';
import 'package:wow_classic_raid_reset_timer/model/wow_class.dart';

class Shaman implements WowClass {
  @override
  MaterialColor color = Colors.pink;

  @override
  String name = 'Shaman';

  @override
  TextColor textColor = TextColor.light;
}
