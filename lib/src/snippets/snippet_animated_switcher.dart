import 'package:flutter/material.dart';

class SnippetAnimatedSwitcher extends StatefulWidget {
  const SnippetAnimatedSwitcher({Key? key}) : super(key: key);

  @override
  _SnippetAnimatedSwitcherState createState() =>
      _SnippetAnimatedSwitcherState();
}

class _SnippetAnimatedSwitcherState extends State<SnippetAnimatedSwitcher> {
  int _count = 0;

  void _incrementCounter() {
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
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(scale: animation, child: child);
              },
              child: Text(
                '$_count',
                key: ValueKey<int>(_count),
                style: Theme.of(context).textTheme.headline4,
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
                  color: Colors.white,
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
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
