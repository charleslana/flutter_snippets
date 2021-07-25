import 'package:flutter/material.dart';

class SnippetFlutterLogo extends StatelessWidget {
  const SnippetFlutterLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: FlutterLogo(
            size: 300,
            textColor: Colors.blue,
            style: FlutterLogoStyle.stacked,
          ),
        ),
      ),
    );
  }
}
