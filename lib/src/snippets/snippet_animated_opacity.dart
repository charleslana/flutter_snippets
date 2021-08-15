import 'package:flutter/material.dart';

class SnippetAnimatedOpacity extends StatefulWidget {
  const SnippetAnimatedOpacity({Key? key}) : super(key: key);

  @override
  _SnippetAnimatedOpacityState createState() => _SnippetAnimatedOpacityState();
}

class _SnippetAnimatedOpacityState extends State<SnippetAnimatedOpacity> {
  double _opacity = 1;

  void _animatedOpacity() {
    setState(() {
      _opacity = _opacity == 1 ? 0.3 : 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedOpacity(
        duration: const Duration(milliseconds: 500),
        opacity: _opacity,
        child: Center(
          child: ElevatedButton(
            onPressed: _animatedOpacity,
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Text('Tap\nto\nanimate'),
            ),
          ),
        ),
      ),
    );
  }
}
