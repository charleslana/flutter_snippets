import 'package:flutter/material.dart';

class SnippetDropdown extends StatefulWidget {
  const SnippetDropdown({Key? key}) : super(key: key);

  @override
  _SnippetDropdownState createState() => _SnippetDropdownState();
}

class _SnippetDropdownState extends State<SnippetDropdown> {
  List<String> _cities = [
    'Betim',
    'Contagem',
    'Belo Horizonte',
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
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Selecione a cidade'),
            DropdownButton<String>(
              items: _cities.map((String dropDownStringItem) {
                return DropdownMenuItem<String>(
                  value: dropDownStringItem,
                  child: Text(dropDownStringItem),
                );
              }).toList(),
              onChanged: (String? novoItemSelecionado) {
                _dropDownItemSelected(novoItemSelecionado!);
                setState(() {
                  _selectedItem = novoItemSelecionado;
                });
              },
              value: _selectedItem,
            ),
            Text(
              'A cidade selecionada foi \n$_selectedItem',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
