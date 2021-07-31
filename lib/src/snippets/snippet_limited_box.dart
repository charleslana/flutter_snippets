import 'package:flutter/material.dart';

class SnippetLimitedBox extends StatelessWidget {
  const SnippetLimitedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LimitedBox(
        maxHeight: 20,
        child: Container(
          color: Colors.blue,
          child: Text(
            'Hello World!',
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}
