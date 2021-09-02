import 'package:flutter/material.dart';

class SnippetCheckboxListTile extends StatefulWidget {
  const SnippetCheckboxListTile({Key? key}) : super(key: key);

  @override
  _SnippetCheckboxListTileState createState() =>
      _SnippetCheckboxListTileState();
}

class _SnippetCheckboxListTileState extends State<SnippetCheckboxListTile> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CheckboxListTile(
          title: const Text('Hello World'),
          value: _isChecked,
          onChanged: (bool? value) {
            setState(() {
              _isChecked = value!;
            });
          },
          secondary: const Icon(Icons.hourglass_empty),
        ),
      ),
    );
  }
}
