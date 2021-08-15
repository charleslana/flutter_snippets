import 'package:flutter/material.dart';

class SnippetSpacer extends StatelessWidget {
  const SnippetSpacer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Text('Column 1'),
          Spacer(),
          Text('Column 2'),
          Spacer(),
          Text('Column 3'),
        ],
      ),
    );
  }
}
