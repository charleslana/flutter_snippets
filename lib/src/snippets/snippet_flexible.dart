import 'package:flutter/material.dart';

class SnippetFlexible extends StatelessWidget {
  const SnippetFlexible({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.orangeAccent,
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              color: Colors.lightBlueAccent,
            ),
          ),
          Flexible(
            child: Container(
              color: Colors.blueAccent,
            ),
          ),
          Flexible(
            child: Container(
              color: Colors.greenAccent,
            ),
          ),
        ],
      ),
    );
  }
}
