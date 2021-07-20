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
          label: 'Fechar',
          onPressed: () => {},
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mova o quadrado numeral'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Draggable(
              data: _random,
              child: Container(
                width: 100.0,
                height: 100.0,
                child: Center(
                  child: Text(
                    _random.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 26.0),
                  ),
                ),
                color: Colors.pink,
              ),
              feedback: Container(
                width: 100.0,
                height: 100.0,
                child: Center(
                  child: Text(
                    _random.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 26.0),
                  ),
                ),
                color: Colors.pink,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.green,
                  child: DragTarget(
                    builder: (BuildContext context, List<dynamic> candidateData,
                        rejectedData) {
                      print(candidateData);
                      return Center(
                          child: Text(
                        'Par',
                        style: TextStyle(color: Colors.white, fontSize: 26.0),
                      ));
                    },
                    onWillAccept: (data) {
                      return true;
                    },
                    onAccept: (int data) {
                      if (data % 2 == 0) {
                        _showMessage('Correto!');
                        _newRandom();
                      } else {
                        _showMessage('Errado!');
                      }
                    },
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.deepPurple,
                  child: DragTarget(
                    builder: (BuildContext context, List<dynamic> candidateData,
                        rejectedData) {
                      return Center(
                          child: Text(
                        'Ímpar',
                        style: TextStyle(color: Colors.white, fontSize: 26.0),
                      ));
                    },
                    onWillAccept: (data) {
                      return true;
                    },
                    onAccept: (int data) {
                      if (data % 2 != 0) {
                        _showMessage('Correto!');
                        _newRandom();
                      } else {
                        _showMessage('Errado!');
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
