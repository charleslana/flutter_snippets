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
      _crossFadeStateShowFirst = _crossFadeStateShowFirst ? false : true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedCrossFade'),
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedCrossFade(
            duration: Duration(milliseconds: 500),
            sizeCurve: Curves.bounceOut,
            crossFadeState: _crossFadeStateShowFirst
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            firstChild: Container(
              color: Colors.amber,
              height: 100.0,
              width: 100.0,
            ),
            secondChild: Container(
              color: Colors.lime,
              height: 200.0,
              width: 200.0,
            ),
          ),
          Positioned.fill(
            child: TextButton(
              child: Text('Toque para\nAnimar a Cor e o Tamanho'),
              onPressed: () => _crossFade(),
            ),
          ),
        ],
      ),
    );
  }
}
