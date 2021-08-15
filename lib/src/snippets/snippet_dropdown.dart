import 'package:flutter/material.dart';

class SnippetDropdown extends StatefulWidget {
  const SnippetDropdown({Key? key}) : super(key: key);

  @override
  _SnippetDropdownState createState() => _SnippetDropdownState();
}

class _SnippetDropdownState extends State<SnippetDropdown> {
  final List<String> _cities = [
    'City 1',
    'City 2',
    'City 3',
  ];
  late String _selectedItem;

  void _dropDownItemSelected(String newItem) {
    setState(() {
      _selectedItem = newItem;
    });
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      _selectedItem = _cities[2];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Select city'),
            DropdownButton<String>(
              items: _cities.map((String dropDownStringItem) {
                return DropdownMenuItem<String>(
                  value: dropDownStringItem,
                  child: Text(dropDownStringItem),
                );
              }).toList(),
              onChanged: (String? newItemSelected) {
                _dropDownItemSelected(newItemSelected!);
                setState(() {
                  _selectedItem = newItemSelected;
                });
              },
              value: _selectedItem,
            ),
            Text(
              'The selected city was\n$_selectedItem',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
