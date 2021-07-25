import 'package:flutter/material.dart';

class SnippetAlign extends StatelessWidget {
  const SnippetAlign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 200,
        width: 200,
        color: Colors.blue[50],
        child: Align(
          alignment: Alignment.bottomRight,
          child: Text(
            'Hello World!',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
