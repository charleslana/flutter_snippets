import 'package:flutter/material.dart';

class SnippetSingleChildScrollView extends StatelessWidget {
  const SnippetSingleChildScrollView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width * 0.5;

    return Scaffold(
      body: Center(
        child: Container(
          width: width,
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blueAccent,
              width: 5,
            ),
          ),
          child: const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Text(
              'Move text to the side',
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                letterSpacing: 3,
                wordSpacing: 3,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
