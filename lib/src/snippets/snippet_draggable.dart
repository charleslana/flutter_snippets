import 'dart:math';

import 'package:flutter/material.dart';

class SnippetDraggable extends StatefulWidget {
  const SnippetDraggable({Key? key}) : super(key: key);

  @override
  _SnippetDraggableState createState() => _SnippetDraggableState();
}

class _SnippetDraggableState extends State<SnippetDraggable> {
  int _random = Random().nextInt(100);

  void _newRandom() {
    setState(() {
      _random = Random().nextInt(100);
    });
  }

  void _showMessage(String text) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text),
        action: SnackBarAction(
          label: 'Close',
          onPressed: () => {},
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Draggable(
              data: _random,
              feedback: Container(
                width: 100,
                height: 100,
                color: Colors.pink,
                child: Center(
                  child: Text(
                    _random.toString(),
                    style: const TextStyle(color: Colors.white, fontSize: 26),
                  ),
                ),
              ),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.pink,
                child: Center(
                  child: Text(
                    _random.toString(),
                    style: const TextStyle(color: Colors.white, fontSize: 26),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                  child: DragTarget(
                    builder: (BuildContext context, List<dynamic> candidateData,
                        rejectedData) {
                      return const Center(
                          child: Text(
                        'Even',
                        style: TextStyle(color: Colors.white, fontSize: 26),
                      ));
                    },
                    onWillAccept: (data) {
                      return true;
                    },
                    onAccept: (int data) {
                      if (data % 2 == 0) {
                        _showMessage('Correct');
                        _newRandom();
                      } else {
                        _showMessage('***Wrong***');
                      }
                    },
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.deepPurple,
                  child: DragTarget(
                    builder: (BuildContext context, List<dynamic> candidateData,
                        rejectedData) {
                      return const Center(
                          child: Text(
                        'Odd',
                        style: TextStyle(color: Colors.white, fontSize: 26),
                      ));
                    },
                    onWillAccept: (data) {
                      return true;
                    },
                    onAccept: (int data) {
                      if (data % 2 != 0) {
                        _showMessage('Correct');
                        _newRandom();
                      } else {
                        _showMessage('***Wrong***');
                      }
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
