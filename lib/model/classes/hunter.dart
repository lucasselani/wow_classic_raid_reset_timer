import 'package:flutter/material.dart';
import 'package:wow_classic_raid_reset_timer/model/wow_class.dart';

class Hunter implements WowClass {
  @override
  MaterialColor color = Colors.green;

  @override
  String name = 'Hunter';

  @override
  TextColor textColor = TextColor.light;
}
