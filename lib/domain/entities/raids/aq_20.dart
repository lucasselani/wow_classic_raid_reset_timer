import 'package:wow_classic_raid_reset_timer/domain/entities/raid.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/boss.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/region.dart';

class AQ20 extends Raid {
  @override
  List<Boss> bosses = [
    Boss(name: 'Kurinnaxx'),
    Boss(name: 'General Rajaxx'),
    Boss(name: 'Ossirian the Unscarred'),
    Boss(name: 'Buru the Gorger'),
    Boss(name: 'Moam'),
    Boss(name: 'Ayamiss the Hunter'),
  ];

  @override
  String id = 'aq20';

  @override
  Duration interval = Duration(days: 3);

  @override
  String name = "Ruins of Ahn'Qiraj (AQ20)";

  @override
  Region euTimestamp =
      Region(timestamp: DateTime.parse('2020-04-16T02:00:00-05:00'));

  @override
  Region usTimestamp =
      Region(timestamp: DateTime.parse('2020-04-16T11:00:00-05:00'));
}
