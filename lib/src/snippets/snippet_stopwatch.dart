import 'dart:async';

import 'package:flutter/material.dart';

class SnippetStopwatch extends StatefulWidget {
  const SnippetStopwatch({Key? key}) : super(key: key);

  @override
  _SnippetStopwatchState createState() => _SnippetStopwatchState();
}

class _SnippetStopwatchState extends State<SnippetStopwatch> {
  Stopwatch _watch = Stopwatch();
  late Timer _timer;
  bool _startStop = true;
  String _elapsedTime = 'Clique no ícone';

  void _startOrStop() {
    if (_startStop) {
      _startWatch();
    } else {
      _stopWatch();
    }
  }

  void _startWatch() {
    setState(() {
      _startStop = false;
      _watch.start();
      _timer = Timer.periodic(Duration(milliseconds: 100), _updateTime);
    });
  }

  void _stopWatch() {
    setState(() {
      _startStop = true;
      _watch.stop();
      _setTime();
    });
  }

  void _setTime() {
    final timeSoFar = _watch.elapsedMilliseconds;
    setState(() {
      _elapsedTime = _transformMilliSeconds(timeSoFar);
    });
  }

  String _transformMilliSeconds(int milliseconds) {
    int hundreds = (milliseconds / 10).truncate();
    int seconds = (hundreds / 100).truncate();
    int minutes = (seconds / 60).truncate();
    int hours = (minutes / 60).truncate();

    String hoursStr = (hours % 60).toString().padLeft(2, '0');
    String minutesStr = (minutes % 60).toString().padLeft(2, '0');
    String secondsStr = (seconds % 60).toString().padLeft(2, '0');

    return '$hoursStr:$minutesStr:$secondsStr';
  }

  void _updateTime(Timer timer) {
    if (_watch.isRunning) {
      setState(() {
        print('startstop Inside=$_startStop');
        _elapsedTime = _transformMilliSeconds(_watch.elapsedMilliseconds);
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _elapsedTime,
              style: TextStyle(fontSize: 25.0),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  backgroundColor: Colors.teal,
                  onPressed: () => _startOrStop(),
                  child:
                      _startStop ? Icon(Icons.play_arrow) : Icon(Icons.pause),
                ),
                SizedBox(width: 20.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
