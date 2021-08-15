import 'package:flutter/material.dart';

class SnippetFractionallySizedBox extends StatelessWidget {
  const SnippetFractionallySizedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 100,
          color: const Color.fromARGB(255, 235, 237, 237),
          child: FractionallySizedBox(
            widthFactor: 0.5,
            heightFactor: 0.25,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Tap'),
            ),
          ),
        ),
      ),
    );
  }
}
