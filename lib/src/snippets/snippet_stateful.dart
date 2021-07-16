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
      appBar: AppBar(
        title: Text('Stateful'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$_count',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Text(
                'Adicionar +1',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onPressed: _increment,
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
