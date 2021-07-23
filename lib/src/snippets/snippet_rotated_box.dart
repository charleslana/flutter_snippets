import 'package:flutter/material.dart';

class SnippetRotatedBox extends StatelessWidget {
  const SnippetRotatedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RotatedBox(
          quarterTurns: 3,
          child: const Text('Hello World!'),
        ),
      ),
    );
  }
}
