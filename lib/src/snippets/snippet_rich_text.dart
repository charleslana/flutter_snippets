import 'package:flutter/material.dart';

class SnippetRichText extends StatelessWidget {
  const SnippetRichText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RichText(
          text: TextSpan(
            text: 'Olá ',
            style: Theme.of(context).textTheme.headline4,
            children: [
              TextSpan(
                text: 'bold',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(text: ' Mundo!'),
            ],
          ),
        ),
      ),
    );
  }
}
