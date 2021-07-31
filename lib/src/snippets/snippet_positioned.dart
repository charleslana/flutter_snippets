import 'package:flutter/material.dart';

class SnippetPositioned extends StatelessWidget {
  const SnippetPositioned({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 30,
            left: 30,
            height: 250,
            width: 250,
            child: Container(
              color: Colors.green,
            ),
          ),
          Positioned(
            top: 70,
            left: 60,
            height: 250,
            width: 250,
            child: Container(
              color: Colors.blue,
            ),
          ),
          Positioned(
            top: 120,
            left: 100,
            height: 250,
            width: 250,
            child: Container(
              color: Colors.purple,
            ),
          ),
        ],
      ),
    );
  }
}
