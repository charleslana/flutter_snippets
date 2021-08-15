import 'package:flutter/material.dart';

class SnippetSizedBox extends StatelessWidget {
  const SnippetSizedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: const [
            SizedBox(
              height: 20,
            ),
            Card(
              elevation: 10,
              child: Padding(
                padding: EdgeInsets.all(25),
                child: Text(
                  'Hello World',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Card(
              elevation: 10,
              child: Padding(
                padding: EdgeInsets.all(25),
                child: Text(
                  'Hello World',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
