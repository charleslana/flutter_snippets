import 'package:flutter/material.dart';

class SnippetStateful extends StatefulWidget {
  const SnippetStateful({Key? key}) : super(key: key);

  @override
  _SnippetStatefulState createState() => _SnippetStatefulState();
}

class _SnippetStatefulState extends State<SnippetStateful> {
  int _count = 0;

  void _increment() {
    setState(() {
      _count++;
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
              '$_count',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: _increment,
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
                  _count = 0;
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
