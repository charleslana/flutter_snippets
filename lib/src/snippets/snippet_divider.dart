import 'package:flutter/material.dart';

class SnippetDivider extends StatelessWidget {
  const SnippetDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text('Coluna 1'),
            Divider(),
          ],
        ),
      ),
    );
  }
}
