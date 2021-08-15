import 'package:flutter/material.dart';

class SnippetStack extends StatelessWidget {
  const SnippetStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.amber,
          ),
          const Positioned(
            bottom: 15,
            left: 20,
            child: Text(
              'Text',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
          ),
          Column(
            children: const [
              Text('Text 1'),
              Text('Text 2'),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 100),
            child: const Text('Text'),
          ),
        ],
      ),
    );
  }
}
