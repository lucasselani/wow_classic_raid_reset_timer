import 'package:flutter/material.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/wow_class.dart';

class Warlock implements WowClass {
  @override
  MaterialColor color = Colors.deepPurple;

  @override
  String name = 'Warlock';

  @override
  TextColor textColor = TextColor.light;
}
