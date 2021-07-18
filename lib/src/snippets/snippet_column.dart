import 'package:flutter/material.dart';

class SnippetColumn extends StatelessWidget {
  const SnippetColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text('Coluna 1'),
          Divider(),
          Text('Coluna 2'),
          Divider(),
          Text('Coluna 3'),
        ],
      ),
    );
  }
}
