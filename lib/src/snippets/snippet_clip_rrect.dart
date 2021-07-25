import 'package:flutter/material.dart';

class SnippetClipRRect extends StatelessWidget {
  const SnippetClipRRect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(300.0),
          child: Container(
            height: 200,
            child: Image.network('https://i.imgur.com/w6vxktt.png'),
          ),
        ),
      ),
    );
  }
}
