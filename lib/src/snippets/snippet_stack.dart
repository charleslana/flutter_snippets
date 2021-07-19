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
          Positioned(
            bottom: 15.0,
            left: 20.0,
            child: Text(
              'Texto posicionado',
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
            children: [
              Text('Texto 1'),
              Text('Texto 2'),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 100),
            child: Text('Texto abaixo'),
          ),
        ],
      ),
    );
  }
}
