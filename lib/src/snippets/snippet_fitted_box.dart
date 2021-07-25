import 'package:flutter/material.dart';

class SnippetFittedBox extends StatelessWidget {
  const SnippetFittedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.blue,
          width: 200,
          height: 200,
          child: FittedBox(
            child: Center(
              child: Text(
                'FittedBox',
                style: TextStyle(fontSize: 10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
