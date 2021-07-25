import 'package:flutter/material.dart';

class SnippetBoxDecoration extends StatelessWidget {
  const SnippetBoxDecoration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.orangeAccent,
            borderRadius: BorderRadius.circular(25),
          ),
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}
