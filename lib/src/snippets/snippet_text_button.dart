import 'package:flutter/material.dart';

class SnippetTextButton extends StatelessWidget {
  const SnippetTextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {},
          child: const Text('Button'),
        ),
      ),
    );
  }
}
