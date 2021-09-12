import 'package:flutter/material.dart';

class SnippetInputChip extends StatefulWidget {
  const SnippetInputChip({Key? key}) : super(key: key);

  @override
  _SnippetInputChipState createState() => _SnippetInputChipState();
}

class _SnippetInputChipState extends State<SnippetInputChip> {
  final TextEditingController _textEditingController = TextEditingController();
  List<String> _values = [];
  List<bool> _selected = [];

  Widget _buildChips() {
    final List<Widget> chips = [];

    for (int i = 0; i < _values.length; i++) {
      final InputChip actionChip = InputChip(
        selected: _selected[i],
        label: Text(_values[i]),
        avatar: const FlutterLogo(),
        elevation: 10,
        pressElevation: 5,
        shadowColor: Colors.teal,
        onPressed: () {
          setState(() {
            _selected[i] = !_selected[i];
          });
        },
        onDeleted: () {
          _values.removeAt(i);
          _selected.removeAt(i);

          setState(() {
            _values = _values;
            _selected = _selected;
          });
        },
      );

      chips.add(actionChip);
    }

    return ListView(
      scrollDirection: Axis.horizontal,
      children: chips,
    );
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
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
            TextFormField(
              controller: _textEditingController,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ElevatedButton(
                onPressed: () {
                  _values.add(_textEditingController.text.trim());
                  _selected.add(true);
                  _textEditingController.clear();

                  setState(() {
                    _values = _values;
                    _selected = _selected;
                  });
                },
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
