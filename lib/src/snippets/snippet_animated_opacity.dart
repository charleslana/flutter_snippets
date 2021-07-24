import 'package:flutter/material.dart';

class SnippetAnimatedOpacity extends StatefulWidget {
  const SnippetAnimatedOpacity({Key? key}) : super(key: key);

  @override
  _SnippetAnimatedOpacityState createState() => _SnippetAnimatedOpacityState();
}

class _SnippetAnimatedOpacityState extends State<SnippetAnimatedOpacity> {
  double _opacity = 1.0;

  void _animatedOpacity() {
    setState(() {
      _opacity = _opacity == 1.0 ? 0.3 : 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedOpacity'),
        automaticallyImplyLeading: false,
      ),
      body: AnimatedOpacity(
        duration: Duration(milliseconds: 500),
        opacity: _opacity,
        child: Center(
          child: ElevatedButton(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text('Toque\npara\nAnimar'),
            ),
            onPressed: () => _animatedOpacity(),
          ),
        ),
      ),
    );
  }
}
