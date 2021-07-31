import 'package:flutter/material.dart';

class SnippetRawString extends StatelessWidget {
  const SnippetRawString({Key? key}) : super(key: key);

  final String value = r'R$100';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(value),
      ),
    );
  }
}
