import 'package:wow_classic_raid_reset_timer/domain/entities/boss.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/raid.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/region.dart';

class BlackwingLair extends Raid {
  @override
  List<Boss> bosses = [
    Boss(name: 'Razorgore'),
    Boss(name: 'Vaelastrasz'),
    Boss(name: 'Broodlord Lashlayer'),
    Boss(name: 'Firemaw'),
    Boss(name: 'Ebonroc'),
    Boss(name: 'Flamegor'),
    Boss(name: 'Chromaggus'),
    Boss(name: 'Nefarian'),
  ];

  @override
  String id = 'bwl';

  @override
  Duration interval = Duration(days: 7);

  @override
  String name = 'Blackwing Lair';

  @override
  Region euTimestamp =
      Region(timestamp: DateTime.parse('2019-12-04T02:00:00-05:00'));

  @override
  Region usTimestamp =
      Region(timestamp: DateTime.parse('2019-12-10T11:00:00-05:00'));
}
