import 'package:flutter/material.dart';

class SnippetDivider extends StatelessWidget {
  const SnippetDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntrinsicHeight(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Text('Column'),
            Divider(),
          ],
        ),
      ),
    );
  }
}
