import 'package:wow_classic_raid_reset_timer/model/boss.dart';
import 'package:wow_classic_raid_reset_timer/model/region.dart';

abstract class Raid {
  String id;
  String name;
  Region usTimestamp;
  Region euTimestamp;
  Duration interval;
  List<Boss> bosses;
}
