import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:wow_classic_raid_reset_timer/model/character.dart';
import 'package:wow_classic_raid_reset_timer/model/raid.dart';
import 'package:wow_classic_raid_reset_timer/model/raids/blackwing_lair.dart';
import 'package:wow_classic_raid_reset_timer/model/raids/molten_core.dart';
import 'package:wow_classic_raid_reset_timer/model/raids/onyxias_lair.dart';
import 'package:wow_classic_raid_reset_timer/model/raids/test_raid.dart';
import 'package:wow_classic_raid_reset_timer/model/raids/zul_gurub.dart';
import 'package:wow_classic_raid_reset_timer/presentation/screen/raid_list_item.dart';
import 'package:wow_classic_raid_reset_timer/resources/colors.dart';
import 'package:wow_classic_raid_reset_timer/resources/styles.dart';

class RaidTimerScreen extends StatelessWidget {
  final Character character;

  RaidTimerScreen({@required this.character}) {
    print('Raid timer screen started for ${character.charName}');
    AppColors.primaryColor = character.charClass.color;
  }

  final List<Raid> raids = [
    ZulGurub(),
    OnyxiasLair(),
    MoltenCore(),
    BlackwingLair(),
    TestRaid(),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: _buildAppBar(),
      backgroundColor: AppColors.backgroundColor,
      resizeToAvoidBottomInset: false,
      body:
          ListView(children: raids.map((r) => RaidListItem(raid: r)).toList()));

  Widget _buildAppBar() => AppBar(
        elevation: 4,
        backgroundColor: AppColors.primaryColor,
        title: Text(_createNameString(),
            style: Styles.appBar(textColor: character.charClass.textColor)),
      );

  String _createNameString() {
    var name = character.charName;
    name += ' (';
    if (character.serverName != null) {
      name += character.serverName;
      name += '-';
    }
    name += describeEnum(character.serverRegion.toString());
    name += ')';
    return name;
  }
}
