import 'package:flutter/material.dart';

class SnippetClipRect extends StatelessWidget {
  const SnippetClipRect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRect(
          child: Container(
            height: 200,
            child: Align(
              alignment: Alignment.center,
              widthFactor: 0.4,
              heightFactor: 1.0,
              child: Image.network('https://i.imgur.com/w6vxktt.png'),
            ),
          ),
        ),
      ),
    );
  }
}
