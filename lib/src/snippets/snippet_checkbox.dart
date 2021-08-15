import 'package:flutter/material.dart';

class SnippetCheckbox extends StatefulWidget {
  const SnippetCheckbox({Key? key}) : super(key: key);

  @override
  _SnippetCheckboxState createState() => _SnippetCheckboxState();
}

class _SnippetCheckboxState extends State<SnippetCheckbox> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: SizedBox(
              width: 430,
              height: 700,
              child: Column(
                children: [
                  Text(
                    'Checkbox',
                    style: TextStyle(
                      color: Colors.greenAccent[400],
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Hello World accept! $_value',
                        style: const TextStyle(fontSize: 17),
                      ),
                      const SizedBox(width: 10),
                      Checkbox(
                        value: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
