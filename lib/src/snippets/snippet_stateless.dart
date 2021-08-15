import 'package:flutter/material.dart';

class SnippetStateless extends StatelessWidget {
  const SnippetStateless({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Stateless',
        ),
      ),
    );
  }
}
