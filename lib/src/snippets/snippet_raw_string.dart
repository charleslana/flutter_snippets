import 'package:flutter/material.dart';

class SnippetRawString extends StatelessWidget {
  const SnippetRawString({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String value = r'$100';

    return const Scaffold(
      body: Center(
        child: Text(value),
      ),
    );
  }
}
