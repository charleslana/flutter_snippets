import 'package:flutter/material.dart';

class SnippetChip extends StatefulWidget {
  const SnippetChip({Key? key}) : super(key: key);

  @override
  _SnippetChipState createState() => _SnippetChipState();
}

class _SnippetChipState extends State<SnippetChip> {
  final List<String> _items = [
    'Flutter',
    'Dart',
    'Development',
    'Develop',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Wrap(
          spacing: 6,
          children: _items.map((item) {
            final int index = _items.indexOf(item);

            return Padding(
              padding: const EdgeInsets.all(5),
              child: Chip(
                avatar: CircleAvatar(
                  child: Text(item.substring(0, 1)),
                ),
                label: Text(item),
                onDeleted: () {
                  setState(() {
                    _items.removeAt(index);
                  });
                },
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
