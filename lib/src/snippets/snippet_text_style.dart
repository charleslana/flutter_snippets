import 'package:flutter/material.dart';

class SnippetTextStyle extends StatelessWidget {
  const SnippetTextStyle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Texto com estilização',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
