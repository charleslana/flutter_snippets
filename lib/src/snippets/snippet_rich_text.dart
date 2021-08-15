import 'package:flutter/material.dart';

class SnippetRichText extends StatelessWidget {
  const SnippetRichText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RichText(
          text: TextSpan(
            text: 'Hello ',
            style: Theme.of(context).textTheme.headline4,
            children: const [
              TextSpan(
                text: 'bold',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(text: ' World'),
            ],
          ),
        ),
      ),
    );
  }
}
