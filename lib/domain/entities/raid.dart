import 'package:wow_classic_raid_reset_timer/domain/entities/boss.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/region.dart';

abstract class Raid {
  String id;
  String name;
  Region usTimestamp;
  Region euTimestamp;
  Duration interval;
  List<Boss> bosses;

  DateTime expireDate(ServerRegion region) {
    var expireDate = region == ServerRegion.US
        ? usTimestamp.timestamp
        : euTimestamp.timestamp;
    while (expireDate.isBefore(DateTime.now())) {
      expireDate = expireDate.add(interval);
    }
    return expireDate;
  }
}
