import 'package:flutter/material.dart';

class SnippetElevatedButton extends StatelessWidget {
  const SnippetElevatedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Texto com backgroundColor'),
          onPressed: () {},
        ),
      ),
    );
  }
}
