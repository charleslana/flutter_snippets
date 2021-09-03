import 'package:flutter/material.dart';

class SnippetPushNamed extends StatelessWidget {
  const SnippetPushNamed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('First Page'),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute<dynamic>(
                    builder: (context) =>
                        const SnippetPushNamedMyAppMaterialPage()),
              ),
              child: const Text('Go to other page'),
            ),
          ],
        ),
      ),
    );
  }
}

class SnippetPushNamedMyAppMaterialPage extends StatelessWidget {
  const SnippetPushNamedMyAppMaterialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Other Page'),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Go to first page'),
            ),
          ],
        ),
      ),
    );
  }
}
