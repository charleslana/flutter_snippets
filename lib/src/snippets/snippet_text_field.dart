import 'package:flutter/material.dart';

class SnippetTextField extends StatefulWidget {
  const SnippetTextField({Key? key}) : super(key: key);

  @override
  _SnippetTextFieldState createState() => _SnippetTextFieldState();
}

class _SnippetTextFieldState extends State<SnippetTextField> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a search',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter your username',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
