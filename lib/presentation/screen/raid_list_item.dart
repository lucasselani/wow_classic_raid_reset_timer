import 'package:flutter/material.dart';
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
  Widget build(BuildContext context) => Card(
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
              CountdownWatch(expireDate: _calculateExpireDate()),
              SizedBox(width: 16),
              Expanded(
                child: Text(raid.name, style: Styles.title()),
              ),
              SizedBox(width: 16),
            ],
          ),
        ),
      );

  DateTime _calculateExpireDate() {
    var expireDate = raid.usTimestamp.timestamp;
    while (expireDate.isBefore(DateTime.now())) {
      expireDate.add(raid.interval);
    }
    return expireDate;
  }
}
