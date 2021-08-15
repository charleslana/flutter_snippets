import 'package:flutter/material.dart';

class SnippetExpanded extends StatelessWidget {
  const SnippetExpanded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.orangeAccent,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.lightBlueAccent,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blueAccent,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.greenAccent,
            ),
          ),
        ],
      ),
    );
  }
}
