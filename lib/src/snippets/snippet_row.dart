import 'package:flutter/material.dart';

class SnippetRow extends StatelessWidget {
  const SnippetRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Text('Row 1'),
          VerticalDivider(),
          Text('Row 2'),
          VerticalDivider(),
          Text('Row 3'),
        ],
      ),
    );
  }
}
