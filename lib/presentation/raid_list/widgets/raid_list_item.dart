import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:wow_classic_raid_reset_timer/core/resources/styles.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/raid.dart';
import 'package:wow_classic_raid_reset_timer/domain/entities/region.dart';
import 'package:wow_classic_raid_reset_timer/presentation/raid_list/widgets/countdown_watch.dart';

class RaidListItem extends StatelessWidget {
  final Raid raid;
  final ServerRegion region;

  RaidListItem({
    @required this.raid,
    @required this.region,
  }) {
    print('raid started: ${raid.name}');
  }

  @override
  Widget build(BuildContext context) {
    final expireDate = raid.expireDate(region);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CountdownWatch(expireDate: expireDate, duration: raid.interval),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(raid.name, style: Styles.title),
                SizedBox(height: 4),
                Text(
                  'Resets every ${raid.interval.inDays} days',
                  style: Styles.label,
                ),
                SizedBox(height: 2),
                Text(
                  'Next reset will be ${_getExpireDateString(expireDate)}',
                  style: Styles.subLabel,
                ),
              ],
            ),
          ),
          SizedBox(width: 16),
        ],
      ),
    );
  }

  String _getExpireDateString(DateTime date) =>
      'on ${_getDay(date)} at ${_getHour(date)} local time';

  String _getDay(DateTime date) =>
      DateFormat(DateFormat.YEAR_ABBR_MONTH_WEEKDAY_DAY).format(date.toLocal());

  String _getHour(DateTime date) =>
      DateFormat(DateFormat.HOUR_MINUTE).format(date.toLocal());
}
