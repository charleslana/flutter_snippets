import 'package:flutter/material.dart';

class SnippetImageIcon extends StatelessWidget {
  const SnippetImageIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Center(
          child: ImageIcon(
            NetworkImage('https://i.imgur.com/hEbcdEB.png'),
            size: 32,
            color: Colors.deepPurple,
          ),
        ),
      ),
    );
  }
}
