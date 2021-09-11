import 'dart:async';

import 'package:flutter/material.dart';

class SnippetStopwatch extends StatefulWidget {
  const SnippetStopwatch({Key? key}) : super(key: key);

  @override
  _SnippetStopwatchState createState() => _SnippetStopwatchState();
}

class _SnippetStopwatchState extends State<SnippetStopwatch> {
  final Stopwatch _watch = Stopwatch();
  late Timer _timer;
  bool _startStop = true;
  String _elapsedTime = 'Tap the icon';

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
      _timer = Timer.periodic(const Duration(milliseconds: 100), _updateTime);
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
    final int hundreds = (milliseconds / 10).truncate();
    final int seconds = (hundreds / 100).truncate();
    final int minutes = (seconds / 60).truncate();
    final int hours = (minutes / 60).truncate();

    final String hoursStr = (hours % 60).toString().padLeft(2, '0');
    final String minutesStr = (minutes % 60).toString().padLeft(2, '0');
    final String secondsStr = (seconds % 60).toString().padLeft(2, '0');

    return '$hoursStr:$minutesStr:$secondsStr';
  }

  void _updateTime(Timer timer) {
    if (_watch.isRunning) {
      setState(() {
        _elapsedTime = _transformMilliSeconds(_watch.elapsedMilliseconds);
      });
    }
  }

  @override
  void dispose() {
    _watch.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _elapsedTime,
              style: const TextStyle(fontSize: 25),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  backgroundColor: Colors.teal,
                  onPressed: _startOrStop,
                  child: _startStop
                      ? const Icon(Icons.play_arrow)
                      : const Icon(Icons.pause),
                ),
                const SizedBox(width: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
