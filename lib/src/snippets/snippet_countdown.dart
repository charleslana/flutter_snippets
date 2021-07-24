import 'dart:async';

import 'package:flutter/material.dart';

class SnippetCountdown extends StatefulWidget {
  const SnippetCountdown({Key? key}) : super(key: key);

  @override
  _SnippetCountdownState createState() => _SnippetCountdownState();
}

class _SnippetCountdownState extends State<SnippetCountdown> {
  final _interval = Duration(seconds: 1);
  final int _timerMaxSeconds = 10;
  int _currentSeconds = 0;
  late Timer _timer;

  String get _timerText {
    int minutes = ((_timerMaxSeconds - _currentSeconds) ~/ 60);
    int seconds = ((_timerMaxSeconds - _currentSeconds) % 60);
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  void _startTimeout() {
    _timer = Timer.periodic(_interval, (timer) {
      setState(() {
        print(timer.tick);
        _currentSeconds = timer.tick;
        if (timer.tick >= _timerMaxSeconds) {
          timer.cancel();
        }
      });
    });
  }

  @override
  void initState() {
    _startTimeout();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.timer),
            SizedBox(
              width: 5,
            ),
            _timer.tick >= _timerMaxSeconds
                ? Text(
                    'Tempo finalizado',
                    style: TextStyle(fontSize: 20),
                  )
                : Text(
                    _timerText,
                    style: TextStyle(fontSize: 20),
                  ),
          ],
        ),
      ),
    );
  }
}
