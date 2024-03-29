import 'package:flutter/material.dart';
import 'package:wow_classic_raid_reset_timer/core/resources/styles.dart';
import 'package:wow_classic_raid_reset_timer/core/utils/time_utils.dart';

class CountdownWatch extends StatefulWidget {
  final DateTime expireDate;
  final Duration duration;

  CountdownWatch({@required this.expireDate, @required this.duration});

  @override
  State<StatefulWidget> createState() => _CountdownWatchState();
}

class _CountdownWatchState extends State<CountdownWatch> {
  int remainingSeconds = 0;

  @override
  void initState() {
    super.initState();
    remainingSeconds = _calculateRemainingSeconds();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 1)).then((_) {
      if (mounted) {
        setState(() => remainingSeconds = _calculateRemainingSeconds());
      }
    });
    final days = daysLeft(remainingSeconds);
    final hours = hoursLeft(remainingSeconds - (days * 3600 * 24));
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        SizedBox(
          width: 100,
          height: 100,
          child: CircularProgressIndicator(
              backgroundColor: Colors.black12,
              strokeWidth: 2.5,
              value: _calculateProgression(),
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white)),
        ),
        Container(child: _createTexts(days, hours)),
      ],
    );
  }

  Widget _createTexts(int days, String hours) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Visibility(
            child: Padding(
              padding: EdgeInsets.only(bottom: 4),
              child: Text('$days ${days > 1 ? "days" : "day"}',
                  style: Styles.title),
            ),
            visible: days != 0,
          ),
          Text(hours, style: days != 0 ? Styles.subLabel : Styles.title)
        ],
      );

  int _calculateRemainingSeconds() =>
      (widget.expireDate.millisecondsSinceEpoch -
          DateTime.now().millisecondsSinceEpoch) ~/
      1000;

  double _calculateProgression() =>
      1 - (remainingSeconds / widget.duration.inSeconds);
}
