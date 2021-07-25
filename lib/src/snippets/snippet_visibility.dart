import 'package:flutter/material.dart';

class SnippetVisibility extends StatefulWidget {
  const SnippetVisibility({Key? key}) : super(key: key);

  @override
  _SnippetVisibilityState createState() => _SnippetVisibilityState();
}

class _SnippetVisibilityState extends State<SnippetVisibility> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: Text('Visível/Invisível'),
              onPressed: () {
                setState(() {
                  _isVisible = !_isVisible;
                });
              },
            ),
            Visibility(
              visible: _isVisible,
              child: Image.network('https://i.imgur.com/hEbcdEB.png'),
            ),
          ],
        ),
      ),
    );
  }
}
