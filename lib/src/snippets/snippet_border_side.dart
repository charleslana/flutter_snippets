import 'package:flutter/material.dart';

class SnippetBorderSide extends StatelessWidget {
  const SnippetBorderSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 250,
          height: 200,
          decoration: const BoxDecoration(
            border: Border(
              left: BorderSide(
                color: Colors.blue,
                width: 5,
              ),
            ),
          ),
          child: const Center(
            child: Text('Hello World', style: TextStyle(fontSize: 20)),
          ),
        ),
      ),
    );
  }
}
