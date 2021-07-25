import 'package:flutter/material.dart';

class SnippetAspectRatio extends StatelessWidget {
  const SnippetAspectRatio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AspectRatio(
          aspectRatio: 3 / 2,
          child: Image.network('https://i.imgur.com/w6vxktt.png'),
        ),
      ),
    );
  }
}
