import 'package:flutter/material.dart';

class SnippetRotatedBox extends StatelessWidget {
  const SnippetRotatedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: RotatedBox(
          quarterTurns: 3,
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
