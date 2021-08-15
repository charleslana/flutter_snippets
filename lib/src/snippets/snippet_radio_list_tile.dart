import 'package:flutter/material.dart';

class SnippetRadioListTile extends StatefulWidget {
  const SnippetRadioListTile({Key? key}) : super(key: key);

  @override
  _SnippetRadioListTileState createState() => _SnippetRadioListTileState();
}

class _SnippetRadioListTileState extends State<SnippetRadioListTile> {
  int? _value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RadioListTile(
          value: 1,
          groupValue: _value,
          onChanged: (int? value) {
            setState(() {
              _value = value;
            });
          },
          title: const Text('Title'),
          subtitle: const Text('Sub title'),
          secondary: const Icon(Icons.sd_storage),
          toggleable: true,
          controlAffinity: ListTileControlAffinity.leading,
        ),
      ),
    );
  }
}
