import 'package:wow_classic_raid_reset_timer/domain/entities/raid.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/boss.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/region.dart';

class OnyxiasLair extends Raid {
  @override
  List<Boss> bosses = [
    Boss(name: 'Onyxia'),
  ];

  @override
  String id = 'ony';

  @override
  Duration interval = Duration(days: 5);

  @override
  String name = "Onyxia's Lair";

  @override
  Region euTimestamp =
      Region(timestamp: DateTime.parse('2019-12-10T02:00:00-05:00'));

  @override
  Region usTimestamp =
      Region(timestamp: DateTime.parse('2019-12-06T11:00:00-05:00'));
}
