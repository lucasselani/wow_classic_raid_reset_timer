import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wow_classic_raid_reset_timer/resources/colors.dart';
import 'package:wow_classic_raid_reset_timer/resources/styles.dart';
import 'package:wow_classic_raid_reset_timer/utils/time_utils.dart';

class CountdownWatch extends StatefulWidget {
  final DateTime expireDate;

  CountdownWatch({@required this.expireDate});

  @override
  State<StatefulWidget> createState() => _CountdownWatchState();
}

class _CountdownWatchState extends State<CountdownWatch> {
  int remainingSeconds = 0;

  @override
  void initState() {
    super.initState();
    Timer.periodic(
      Duration(seconds: 1),
      (Timer timer) async {
        if (mounted) {
          setState(() => remainingSeconds = _calculateRemainingSeconds());
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        SizedBox(
          width: 64,
          height: 64,
          child: CircularProgressIndicator(
              backgroundColor: AppColors.black12,
              strokeWidth: 2.5,
              value: _calculateProgression(),
              valueColor:
                  AlwaysStoppedAnimation<Color>(AppColors.backgroundColor)),
        ),
        Container(
          child: Text(
            formatTime(remainingSeconds),
            style: Styles.watch,
          ),
        ),
      ],
    );
  }

  int _calculateRemainingSeconds() =>
      (widget.expireDate.millisecondsSinceEpoch -
          DateTime.now().millisecondsSinceEpoch) ~/
      1000;

  double _calculateProgression() =>
      1 -
      (remainingSeconds / (widget.expireDate.millisecondsSinceEpoch) / 1000);
}
