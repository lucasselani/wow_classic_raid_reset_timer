import 'package:flutter/material.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/wow_class.dart';

class Mage implements WowClass {
  @override
  MaterialColor color = Colors.lightBlue;

  @override
  String name = 'Mage';

  @override
  TextColor textColor = TextColor.dark;
}
