import 'package:flutter/material.dart';

class SnippetGlobalKey extends StatefulWidget {
  const SnippetGlobalKey({Key? key}) : super(key: key);

  @override
  _SnippetGlobalKeyState createState() => _SnippetGlobalKeyState();
}

class _SnippetGlobalKeyState extends State<SnippetGlobalKey> {
  final List<String> _textFieldsValue = [];
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _text = '';

  void _showList(List<String> text) {
    setState(() {
      _textFieldsValue.forEach((value) {
        _text += '$value, ';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Primeiro',
                  ),
                  validator: (value) {
                    if (value!.trim().length == 0) {
                      return 'Não pode ser nulo';
                    }
                    _textFieldsValue.add(value);
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Segundo',
                  ),
                  validator: (value) {
                    if (value!.trim().length == 0) {
                      return 'Não pode ser nulo';
                    }
                    _textFieldsValue.add(value);
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Terceiro',
                  ),
                  validator: (value) {
                    if (value!.trim().length == 0) {
                      return 'Não pode ser nulo';
                    }
                    _textFieldsValue.add(value);
                    return null;
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(_text),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        foregroundColor: Colors.black,
        child: Icon(Icons.add),
        onPressed: () {
          _formKey.currentState!.validate();
          print(_textFieldsValue);
          _showList(_textFieldsValue);
        },
      ),
    );
  }
}
