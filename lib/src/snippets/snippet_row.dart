import 'package:flutter/material.dart';

class SnippetRow extends StatelessWidget {
  const SnippetRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text('Linha 1'),
          VerticalDivider(),
          Text('Linha 2'),
          VerticalDivider(),
          Text('Linha 3'),
        ],
      ),
    );
  }
}
