import 'package:flutter/material.dart';

class SnippetPadding extends StatelessWidget {
  const SnippetPadding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Container(
          padding: EdgeInsets.all(0.0),
          color: Colors.green,
          width: double.infinity,
          height: double.infinity,
          child: Text('Padding'),
        ),
      ),
    );
  }
}
