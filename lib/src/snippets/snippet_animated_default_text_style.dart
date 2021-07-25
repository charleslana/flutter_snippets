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
  double _fontSize = 20.0;

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
      appBar: AppBar(
        title: Text('AnimatedDefaultTextStyle'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedDefaultTextStyle(
              duration: Duration(seconds: 1),
              style: TextStyle(
                color: _color,
                fontSize: _fontSize,
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text('Meu Texto'),
              ),
            ),
            ElevatedButton(
              child: Text('Clique aqui para alterar o estilo'),
              onPressed: () => _animatedTextStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
