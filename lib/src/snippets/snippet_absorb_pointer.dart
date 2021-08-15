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
            const SizedBox(
              height: 20,
            ),
            AbsorbPointer(
              child: ElevatedButton(
                onPressed: _incrementCounter,
                child: const Text(
                  'Add',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _counter = 0;
                });
              },
              child: const Text(
                'Reset',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
