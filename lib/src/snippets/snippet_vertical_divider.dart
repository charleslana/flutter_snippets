import 'package:flutter/material.dart';

class SnippetVerticalDivider extends StatelessWidget {
  const SnippetVerticalDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Text('Row'),
            VerticalDivider(),
          ],
        ),
      ),
    );
  }
}
