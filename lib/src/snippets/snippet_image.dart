import 'package:flutter/material.dart';

class SnippetImage extends StatelessWidget {
  const SnippetImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(
          'https://i.imgur.com/AcfrVWB.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
