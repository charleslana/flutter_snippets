import 'package:flutter/material.dart';

class SnippetChoiceChip extends StatefulWidget {
  const SnippetChoiceChip({Key? key}) : super(key: key);

  @override
  _SnippetChoiceChipState createState() => _SnippetChoiceChipState();
}

class _SnippetChoiceChipState extends State<SnippetChoiceChip> {
  int _selectedIndex = 0;
  final List<String> _options = ['Flutter', 'Dart'];

  Widget _buildChips() {
    final List<Widget> chips = [];

    for (int i = 0; i < _options.length; i++) {
      final ChoiceChip choiceChip = ChoiceChip(
        selected: _selectedIndex == i,
        label: Text(
          _options[i],
          style: const TextStyle(color: Colors.white),
        ),
        avatar: const FlutterLogo(),
        elevation: 10,
        pressElevation: 5,
        shadowColor: Colors.teal,
        backgroundColor: Colors.black54,
        selectedColor: Colors.blue,
        onSelected: (bool selected) {
          setState(() {
            if (selected) {
              _selectedIndex = i;
            }
          });
        },
      );

      chips.add(
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: choiceChip,
        ),
      );
    }

    return ListView(
      scrollDirection: Axis.horizontal,
      children: chips,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(
              height: 30,
              child: _buildChips(),
            ),
          ],
        ),
      ),
    );
  }
}
