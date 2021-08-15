import 'package:flutter/material.dart';

class SnippetInteractiveViewer extends StatelessWidget {
  const SnippetInteractiveViewer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InteractiveViewer(
          child: SizedBox(
            width: double.infinity,
            child: Image.network('https://i.imgur.com/hEbcdEB.png'),
          ),
        ),
      ),
    );
  }
}
