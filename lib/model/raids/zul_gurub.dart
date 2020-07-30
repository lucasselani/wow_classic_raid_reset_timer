import 'package:wow_classic_raid_reset_timer/model/raid.dart';
import 'package:wow_classic_raid_reset_timer/model/boss.dart';
import 'package:wow_classic_raid_reset_timer/model/region.dart';

class ZulGurub implements Raid {
  @override
  List<Boss> bosses = [
    Boss(name: 'High Priestess Jeklik'),
    Boss(name: 'High Priest Venoxis'),
    Boss(name: "High Priestess Mar'li"),
    Boss(name: 'High Priest Thekal'),
    Boss(name: 'High Priestess Arlokk'),
    Boss(name: 'Hakkar the Soulflayer'),
    Boss(name: 'Bloodlord Mandokir'),
    Boss(name: "Jin'do the Hexxer"),
    Boss(name: "Gahz'ranka"),
    Boss(name: 'Edge of Madness'),
  ];

  @override
  String id = 'zg';

  @override
  Duration interval = Duration(days: 3);

  @override
  String name = "Zul'Gurub";

  @override
  Region euTimestamp =
      Region(timestamp: DateTime.parse('2020-04-16T02:00:00-05:00'));

  @override
  Region usTimestamp =
      Region(timestamp: DateTime.parse('2020-04-16T11:00:00-05:00'));
}
