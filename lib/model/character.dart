import 'package:flutter/foundation.dart';
import 'package:wow_classic_raid_reset_timer/model/region.dart';
import 'package:wow_classic_raid_reset_timer/model/wow_class.dart';

class Character {
  WowClass charClass;
  ServerRegion serverRegion;
  String serverName;
  String charName;

  Character(
      {@required this.charClass,
      @required this.charName,
      @required this.serverRegion,
      this.serverName});
}
