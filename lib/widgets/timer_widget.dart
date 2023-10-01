import 'dart:async';

import 'package:flutter/material.dart';
import 'package:src/misc/myColors.dart';
import 'package:src/pages/armed.dart';

class TimerWidget extends StatefulWidget {
  const TimerWidget({Key? key}) : super(key: key);

  @override
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  Timer? myTimer;
  Duration myDuration = Duration(hours: 1, minutes: 10);

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    myTimer = Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
  }

  void stopTimer() {
    setState(() => myTimer!.cancel());
  }

  void setCountDown() {
    final reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        myTimer!.cancel();
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String strDigits(int n) => n.toString().padLeft(2, '0');
    // Step 7
    final hours = strDigits(myDuration.inHours.remainder(24));
    final minutes = strDigits(myDuration.inMinutes.remainder(60));
    final seconds = strDigits(myDuration.inSeconds.remainder(60));
    return Text(
      '$hours:$minutes:$seconds',
      style: const TextStyle(
          fontWeight: FontWeight.bold, color: MyColors.orange, fontSize: 70),
    );
  }
}
