import 'package:flutter/material.dart';

class SnippetClipRect extends StatelessWidget {
  const SnippetClipRect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRect(
          child: SizedBox(
            height: 200,
            child: Align(
              widthFactor: 0.4,
              heightFactor: 1,
              child: Image.network('https://i.imgur.com/w6vxktt.png'),
            ),
          ),
        ),
      ),
    );
  }
}
