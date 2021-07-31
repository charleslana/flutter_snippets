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
              duration: Duration(milliseconds: 500),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(child: child, scale: animation);
              },
              child: Text(
                '$_count',
                key: ValueKey<int>(_count),
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Text(
                'Adicionar +1',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              onPressed: _incrementCounter,
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: Text(
                'Reset',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  _count = 0;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
