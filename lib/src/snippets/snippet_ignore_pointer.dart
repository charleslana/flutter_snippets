import 'package:flutter/material.dart';

class SnippetIgnorePointer extends StatefulWidget {
  const SnippetIgnorePointer({Key? key}) : super(key: key);

  @override
  _SnippetIgnorePointerState createState() => _SnippetIgnorePointerState();
}

class _SnippetIgnorePointerState extends State<SnippetIgnorePointer> {
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
            IgnorePointer(
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
              height: 20,
            ),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: const Text(
                'Add',
                style: TextStyle(
                  fontSize: 18,
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
