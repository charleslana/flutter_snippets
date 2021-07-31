import 'package:flutter/material.dart';

class SnippetLinearProgressIndicator extends StatelessWidget {
  const SnippetLinearProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LinearProgressIndicator(),
      ),
    );
  }
}
