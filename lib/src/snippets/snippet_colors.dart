import 'package:flutter/material.dart';

class SnippetColors extends StatelessWidget {
  const SnippetColors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Hello',
              style: TextStyle(
                color: Colors.teal,
              ),
            ),
            Text(
              'World!',
              style: TextStyle(
                color: Color(0xffff0000),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
