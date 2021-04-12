import 'package:wow_classic_raid_reset_timer/domain/entities/boss.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/raid.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/region.dart';

class TestRaid extends Raid {
  @override
  List<Boss> bosses = [
    Boss(name: 'Felgrom'),
  ];

  @override
  String id = 'test';

  @override
  Duration interval = Duration(hours: 12);

  @override
  String name = 'Test Raid';

  @override
  Region euTimestamp =
      Region(timestamp: DateTime.now()..subtract(Duration(days: 1)));

  @override
  Region usTimestamp =
      Region(timestamp: DateTime.now()..subtract(Duration(days: 1)));
}
