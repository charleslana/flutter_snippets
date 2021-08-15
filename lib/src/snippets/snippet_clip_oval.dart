import 'package:flutter/material.dart';

class SnippetClipOval extends StatelessWidget {
  const SnippetClipOval({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipOval(
          child: SizedBox(
            height: 200,
            child: Image.network('https://i.imgur.com/XGPr8YC.png'),
          ),
        ),
      ),
    );
  }
}
