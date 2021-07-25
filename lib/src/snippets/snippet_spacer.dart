import 'package:flutter/material.dart';

class SnippetSpacer extends StatelessWidget {
  const SnippetSpacer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text('Coluna 1'),
          Spacer(),
          Text('Coluna 2'),
          Spacer(),
          Text('Coluna 3'),
        ],
      ),
    );
  }
}
