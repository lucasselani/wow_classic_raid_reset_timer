import 'package:wow_classic_raid_reset_timer/domain/entities/raid.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/boss.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/region.dart';

class Naxxramas extends Raid {
  @override
  List<Boss> bosses = [
    Boss(name: "Anub'Rekhan"),
    Boss(name: 'Grand Widow Faerlina'),
    Boss(name: 'Maexxna'),
    Boss(name: 'Noth the Plaguebringer'),
    Boss(name: 'Heigan the Unclean'),
    Boss(name: 'Loatheb'),
    Boss(name: 'Instructor Razuvious'),
    Boss(name: 'Gothik the Harvester'),
    Boss(name: 'The Four Horsemen'),
    Boss(name: 'Patchwerk'),
    Boss(name: 'Grobbulus'),
    Boss(name: 'Gluth'),
    Boss(name: 'Thaddius'),
    Boss(name: 'Sapphiron'),
    Boss(name: "Kel'Thuzad"),
  ];

  @override
  String id = 'naxx';

  @override
  Duration interval = Duration(days: 7);

  @override
  String name = 'Naxxramas';

  @override
  Region euTimestamp =
      Region(timestamp: DateTime.parse('2019-12-04T02:00:00-05:00'));

  @override
  Region usTimestamp =
      Region(timestamp: DateTime.parse('2019-12-10T11:00:00-05:00'));
}
