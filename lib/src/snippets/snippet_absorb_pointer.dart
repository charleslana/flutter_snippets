import 'package:flutter/material.dart';

class SnippetAbsorbPointer extends StatefulWidget {
  const SnippetAbsorbPointer({Key? key}) : super(key: key);

  @override
  _SnippetAbsorbPointerState createState() => _SnippetAbsorbPointerState();
}

class _SnippetAbsorbPointerState extends State<SnippetAbsorbPointer> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(
              height: 20,
            ),
            AbsorbPointer(
              absorbing: true,
              child: ElevatedButton(
                child: Text(
                  'Adicionar +1 / Não clicável',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onPressed: _incrementCounter,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: Text(
                'Reset',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onPressed: () {
                setState(() {
                  _counter = 0;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
