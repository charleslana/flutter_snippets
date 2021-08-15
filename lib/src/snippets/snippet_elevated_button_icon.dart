import 'package:flutter/material.dart';

class SnippetElevatedButtonIcon extends StatelessWidget {
  const SnippetElevatedButtonIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton.icon(
          label: const Text('Button with icon'),
          icon: const Icon(Icons.web),
          onPressed: () {},
        ),
      ),
    );
  }
}
