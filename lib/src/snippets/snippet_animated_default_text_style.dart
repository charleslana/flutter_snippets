import 'package:flutter/material.dart';

class SnippetAnimatedDefaultTextStyle extends StatefulWidget {
  const SnippetAnimatedDefaultTextStyle({Key? key}) : super(key: key);

  @override
  _SnippetAnimatedDefaultTextStyleState createState() =>
      _SnippetAnimatedDefaultTextStyleState();
}

class _SnippetAnimatedDefaultTextStyleState
    extends State<SnippetAnimatedDefaultTextStyle> {
  MaterialColor _color = Colors.green;
  double _fontSize = 20;

  void _animatedTextStyle() {
    setState(() {
      if (_fontSize == 20.0) {
        _color = Colors.blue;
        _fontSize = 40.0;
      } else {
        _color = Colors.green;
        _fontSize = 20.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedDefaultTextStyle(
              duration: const Duration(seconds: 1),
              style: TextStyle(
                color: _color,
                fontSize: _fontSize,
              ),
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Text('Text'),
              ),
            ),
            ElevatedButton(
              onPressed: _animatedTextStyle,
              child: const Text('Tap here to change style'),
            ),
          ],
        ),
      ),
    );
  }
}
