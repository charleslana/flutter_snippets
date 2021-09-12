import 'package:flutter/material.dart';

class SnippetIntrinsicWidth extends StatelessWidget {
  const SnippetIntrinsicWidth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntrinsicWidth(
        stepWidth: 150,
        stepHeight: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 50,
              height: 50,
              color: Colors.teal,
            ),
            Expanded(
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
