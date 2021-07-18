import 'package:flutter/material.dart';

class SnippetIcon extends StatelessWidget {
  const SnippetIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.build,
          size: 100,
          color: Colors.purple,
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
