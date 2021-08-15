import 'package:flutter/material.dart';

class SnippetSwitchListTile extends StatefulWidget {
  const SnippetSwitchListTile({Key? key}) : super(key: key);

  @override
  _SnippetSwitchListTileState createState() => _SnippetSwitchListTileState();
}

class _SnippetSwitchListTileState extends State<SnippetSwitchListTile> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SwitchListTile(
          title: const Text('Hello World'),
          value: _value,
          onChanged: (bool? value) {
            setState(() {
              _value = value!;
            });
          },
          secondary: const Icon(Icons.hourglass_empty),
        ),
      ),
    );
  }
}
