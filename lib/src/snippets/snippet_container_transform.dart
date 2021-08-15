import 'package:flutter/material.dart';

class SnippetContainerTransform extends StatelessWidget {
  const SnippetContainerTransform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 200,
        width: double.infinity,
        color: Colors.purple,
        alignment: Alignment.center,
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(30),
        transform: Matrix4.rotationZ(0.1),
        child: const Text(
          'Hello World!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
