import 'package:flutter/material.dart';

class SnippetAnimatedCrossFade extends StatefulWidget {
  const SnippetAnimatedCrossFade({Key? key}) : super(key: key);

  @override
  _SnippetAnimatedCrossFadeState createState() =>
      _SnippetAnimatedCrossFadeState();
}

class _SnippetAnimatedCrossFadeState extends State<SnippetAnimatedCrossFade> {
  bool _crossFadeStateShowFirst = true;

  void _crossFade() {
    setState(() {
      _crossFadeStateShowFirst = !_crossFadeStateShowFirst;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedCrossFade(
            duration: const Duration(milliseconds: 500),
            sizeCurve: Curves.bounceOut,
            crossFadeState: _crossFadeStateShowFirst
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            firstChild: Container(
              color: Colors.amber,
              height: 100,
              width: 100,
            ),
            secondChild: Container(
              color: Colors.lime,
              height: 200,
              width: 200,
            ),
          ),
          Positioned.fill(
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
              ),
              onPressed: _crossFade,
              child: const Text('Tap to\nanimate color and size'),
            ),
          ),
        ],
      ),
    );
  }
}
