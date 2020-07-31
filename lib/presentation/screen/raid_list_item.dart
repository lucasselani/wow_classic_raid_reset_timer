import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:wow_classic_raid_reset_timer/model/raid.dart';
import 'package:wow_classic_raid_reset_timer/presentation/widget/countdown_watch.dart';
import 'package:wow_classic_raid_reset_timer/resources/colors.dart';
import 'package:wow_classic_raid_reset_timer/resources/styles.dart';

class RaidListItem extends StatelessWidget {
  final Raid raid;

  RaidListItem({@required this.raid}) {
    print('raid started: ${raid.name}');
  }

  @override
  Widget build(BuildContext context) {
    final expireDate = _calculateExpireDate();
    return Card(
      elevation: 3,
      color: AppColors.white,
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
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
                  Text(raid.name, style: Styles.title()),
                  SizedBox(height: 4),
                  Text('Resets every ${raid.interval.inDays} days',
                      style: Styles.label(biggerFont: true)),
                  SizedBox(height: 2),
                  Text('Next reset will be ${_getExpireDateString(expireDate)}',
                      style: Styles.label()),
                ],
              ),
            ),
            SizedBox(width: 16),
          ],
        ),
      ),
    );
  }

  DateTime _calculateExpireDate() {
    var expireDate = raid.usTimestamp.timestamp;
    while (expireDate.isBefore(DateTime.now())) {
      expireDate = expireDate.add(raid.interval);
    }
    return expireDate;
  }

  String _getExpireDateString(DateTime date) =>
      'on ${_getDay(date)} at ${_getHour(date)} local time';

  String _getDay(DateTime date) =>
      DateFormat(DateFormat.YEAR_ABBR_MONTH_WEEKDAY_DAY).format(date.toLocal());

  String _getHour(DateTime date) =>
      DateFormat(DateFormat.HOUR_MINUTE).format(date.toLocal());
}
