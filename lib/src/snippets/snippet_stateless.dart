import 'package:flutter/material.dart';

class SnippetStateless extends StatelessWidget {
  const SnippetStateless({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Text(
          'Stateless',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
