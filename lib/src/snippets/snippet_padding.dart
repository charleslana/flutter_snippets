import 'package:flutter/material.dart';

class SnippetPadding extends StatelessWidget {
  const SnippetPadding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Container(
          color: Colors.green,
          width: double.infinity,
          height: double.infinity,
          child: const Text('Padding'),
        ),
      ),
    );
  }
}
