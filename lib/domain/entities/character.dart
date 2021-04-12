import 'package:flutter/foundation.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/region.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/wow_class.dart';

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

  String get charDescription {
    var name = charName;
    name += ' (';
    if (serverName != null) {
      name += serverName;
      name += '-';
    }
    name += describeEnum(serverRegion.toString());
    name += ')';
    return name;
  }
}
