import 'package:flutter/material.dart';

class SnippetCircleAvatar extends StatelessWidget {
  const SnippetCircleAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircleAvatar(
          radius: 96,
          backgroundColor: Colors.black26,
          child: SizedBox(
            height: 192,
            child: Image.network('https://i.imgur.com/hEbcdEB.png'),
          ),
        ),
      ),
    );
  }
}
