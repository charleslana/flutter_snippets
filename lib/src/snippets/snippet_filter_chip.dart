import 'package:flutter/material.dart';

class SnippetFilterChip extends StatefulWidget {
  const SnippetFilterChip({Key? key}) : super(key: key);

  @override
  _SnippetFilterChipState createState() => _SnippetFilterChipState();
}

class _SnippetFilterChipState extends State<SnippetFilterChip> {
  final List<String> _options = ['Flutter', 'Dart', 'Developer'];
  final List<bool> _selected = [false, false, false];

  Widget _buildChips() {
    final List<Widget> chips = [];

    for (int i = 0; i < _options.length; i++) {
      final FilterChip filterChip = FilterChip(
        selected: _selected[i],
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
            _selected[i] = selected;
          });
        },
      );

      chips.add(Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: filterChip,
      ));
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
