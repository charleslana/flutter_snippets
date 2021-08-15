import 'package:flutter/material.dart';

class SnippetDismissible extends StatefulWidget {
  const SnippetDismissible({Key? key}) : super(key: key);

  @override
  _SnippetDismissibleState createState() => _SnippetDismissibleState();
}

class _SnippetDismissibleState extends State<SnippetDismissible> {
  final List<String> _state = [
    'State 1',
    'State 2',
    'State 3',
  ];

  void _showMessage(String text) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text),
        action: SnackBarAction(
          label: 'Close',
          onPressed: () => {},
        ),
      ),
    );
  }

  Widget _body() {
    return ListView.builder(
      itemCount: _state.length,
      itemBuilder: (context, index) {
        final item = _state[index];
        return Dismissible(
          key: Key(item),
          onDismissed: (direction) {
            setState(() {
              _state.removeAt(index);
            });
            _showMessage('$item was removed');
          },
          background: Container(
            color: Colors.red,
            child: const Align(
              alignment: Alignment(-0.9, 0),
              child: Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
          ),
          child: ListTile(
            title: Text(item),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(body: _body());
}
