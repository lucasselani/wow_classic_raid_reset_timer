import 'package:flutter/material.dart';
import 'package:wow_classic_raid_reset_timer/model/raid.dart';
import 'package:wow_classic_raid_reset_timer/model/raids/blackwing_lair.dart';
import 'package:wow_classic_raid_reset_timer/model/raids/molten_core.dart';
import 'package:wow_classic_raid_reset_timer/model/raids/onyxias_lair.dart';
import 'package:wow_classic_raid_reset_timer/model/raids/zul_gurub.dart';
import 'package:wow_classic_raid_reset_timer/presentation/screen/raid_list_item.dart';
import 'package:wow_classic_raid_reset_timer/resources/colors.dart';

class RaidTimerScreen extends StatelessWidget {
  final List<Raid> raids = [
    ZulGurub(),
    OnyxiasLair(),
    MoltenCore(),
    BlackwingLair(),
  ];

  RaidTimerScreen() {
    print('raid screen started');
  }

  List<Widget> _buildRaids() => [
        RaidListItem(raid: raids[0]),
        RaidListItem(raid: raids[1]),
        RaidListItem(raid: raids[2]),
        RaidListItem(raid: raids[3]),
      ];

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: AppColors.backgroundColor,
      resizeToAvoidBottomInset: false,
      body: ListView(children: _buildRaids()));
}
