import 'package:flutter/material.dart';

class SnippetGlobalKey extends StatefulWidget {
  const SnippetGlobalKey({Key? key}) : super(key: key);

  @override
  _SnippetGlobalKeyState createState() => _SnippetGlobalKeyState();
}

class _SnippetGlobalKeyState extends State<SnippetGlobalKey> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  String _first = '';
  String _second = '';
  String _third = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'First',
                ),
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return 'Cannot be null';
                  }
                  setState(() {
                    _first = value;
                  });
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Second',
                ),
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return 'Cannot be null';
                  }
                  setState(() {
                    _second = value;
                  });
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Third',
                ),
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return 'Cannot be null';
                  }
                  setState(() {
                    _third = value;
                  });
                  return null;
                },
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Text(_first),
                      Text(_second),
                      Text(_third),
                    ],
                  )),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        foregroundColor: Colors.black,
        onPressed: () => _key.currentState!.validate(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
