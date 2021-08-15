import 'package:flutter/material.dart';

class SnippetColumn extends StatelessWidget {
  const SnippetColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Text('Column 1'),
          Divider(),
          Text('Column 2'),
          Divider(),
          Text('Column 3'),
        ],
      ),
    );
  }
}
