import 'package:flutter/material.dart';

class SnippetBaseline extends StatelessWidget {
  const SnippetBaseline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.teal,
          child: Baseline(
            baseline: 25,
            baselineType: TextBaseline.alphabetic,
            child: Container(
              width: 50,
              height: 50,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
