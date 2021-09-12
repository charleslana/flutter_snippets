import 'package:flutter/material.dart';

class SnippetTextDefaultStyle extends StatelessWidget {
  const SnippetTextDefaultStyle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DefaultTextStyle(
            style: const TextStyle(
              fontSize: 36,
              color: Colors.blue,
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('The first text'),
                  Text(
                    'The second text',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    'The third text',
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
          ),
          const Text('The fourth text'),
        ],
      ),
    );
  }
}
