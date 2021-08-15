import 'package:flutter/material.dart';

class SnippetOpacity extends StatelessWidget {
  const SnippetOpacity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.maxFinite,
            height: 200,
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Opacity(
              opacity: 0.3,
              child: Image.network(
                'https://i.imgur.com/w6vxktt.png',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          const Positioned.fill(
            child: Align(
              child: Text(
                'Flutter',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blueAccent,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
