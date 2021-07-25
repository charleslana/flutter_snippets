import 'package:flutter/material.dart';

class SnippetConstrainedBox extends StatelessWidget {
  const SnippetConstrainedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 50,
          ),
          child: Text('Hello World! Welcome to Flutter'),
        ),
      ),
    );
  }
}
