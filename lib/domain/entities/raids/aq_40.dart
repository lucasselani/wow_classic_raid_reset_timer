import 'package:wow_classic_raid_reset_timer/domain/entities/raid.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/boss.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/region.dart';

class AQ40 extends Raid {
  @override
  List<Boss> bosses = [
    Boss(name: 'The Prophet Skeram'),
    Boss(name: 'Battleguard Sartura'),
    Boss(name: 'Fankriss the Unyielding'),
    Boss(name: 'Princess Huhuran'),
    Boss(name: 'Twin Emperors'),
    Boss(name: "C'Thun"),
    Boss(name: 'Bug Trio'),
    Boss(name: 'Viscidus'),
    Boss(name: 'Ouro'),
  ];

  @override
  String id = 'aq40';

  @override
  Duration interval = Duration(days: 7);

  @override
  String name = "Temple of Ahn'Qiraj (AQ40)";

  @override
  Region euTimestamp =
      Region(timestamp: DateTime.parse('2019-12-04T02:00:00-05:00'));

  @override
  Region usTimestamp =
      Region(timestamp: DateTime.parse('2019-12-10T11:00:00-05:00'));
}
