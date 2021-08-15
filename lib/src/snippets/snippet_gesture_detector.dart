import 'package:flutter/material.dart';

class SnippetGestureDetector extends StatelessWidget {
  const SnippetGestureDetector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {},
          child: Container(
            height: 60,
            width: 120,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.cyan,
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Center(
              child: Text('Tap here'),
            ),
          ),
        ),
      ),
    );
  }
}
