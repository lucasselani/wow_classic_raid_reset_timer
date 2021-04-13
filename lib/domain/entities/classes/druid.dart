import 'package:flutter/material.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/wow_class.dart';

class Druid implements WowClass {
  @override
  MaterialColor color = Colors.deepOrange;

  @override
  String name = 'Druid';

  @override
  TextColor textColor = TextColor.dark;
}
