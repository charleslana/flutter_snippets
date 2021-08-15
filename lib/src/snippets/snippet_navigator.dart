import 'package:flutter/material.dart';

class SnippetNavigator extends StatelessWidget {
  const SnippetNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute<dynamic>(
                builder: (context) => const SnippetNavigatorMyOtherPage()),
          ),
          child: const Text('Go to the other route'),
        ),
      ),
    );
  }
}

class SnippetNavigatorMyOtherPage extends StatelessWidget {
  const SnippetNavigatorMyOtherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Back to home'),
        ),
      ),
    );
  }
}
