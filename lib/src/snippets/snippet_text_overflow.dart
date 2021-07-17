import 'package:flutter/material.dart';

class SnippetTextOverflow extends StatelessWidget {
  const SnippetTextOverflow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.amber,
          child: SizedBox(
            width: 70,
            height: 70,
            child: Text(
              'Texto com limitação',
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    );
  }
}
