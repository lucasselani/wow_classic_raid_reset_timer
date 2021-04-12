import 'package:wow_classic_raid_reset_timer/domain/entities/raid.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/boss.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/region.dart';

class MoltenCore extends Raid {
  @override
  List<Boss> bosses = [
    Boss(name: 'Lucifron'),
    Boss(name: 'Magmadar'),
    Boss(name: 'Gehennas'),
    Boss(name: 'Garr'),
    Boss(name: 'Baron Geddon'),
    Boss(name: 'Shazzrah'),
    Boss(name: 'Sulfuron Harbinger'),
    Boss(name: 'Golemagg the Incinerator'),
    Boss(name: 'Majordomo Executus'),
    Boss(name: 'Ragnaros'),
  ];

  @override
  String id = 'mc';

  @override
  Duration interval = Duration(days: 7);

  @override
  String name = 'Molten Core';

  @override
  Region euTimestamp =
      Region(timestamp: DateTime.parse('2019-12-04T02:00:00-05:00'));

  @override
  Region usTimestamp =
      Region(timestamp: DateTime.parse('2019-12-10T11:00:00-05:00'));
}
