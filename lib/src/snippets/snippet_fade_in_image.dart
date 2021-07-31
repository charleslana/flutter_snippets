import 'package:flutter/material.dart';

class SnippetFadeInImage extends StatelessWidget {
  const SnippetFadeInImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeInImage.assetNetwork(
          placeholder: 'assets/images/logo_dart.png',
          fadeOutDuration: Duration(seconds: 2),
          image: 'https://i.imgur.com/w6vxktt.png',
        ),
      ),
    );
  }
}
