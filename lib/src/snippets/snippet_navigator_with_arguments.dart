import 'package:flutter/material.dart';

class SnippetNavigatorWithArguments extends StatelessWidget {
  const SnippetNavigatorWithArguments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute<dynamic>(
              builder: (context) =>
                  const SnippetNavigatorWithArgumentsMyOtherPage(),
              settings: const RouteSettings(
                arguments: 'arguments',
              ),
            ),
          ),
          child: const Text('Go to the other route'),
        ),
      ),
    );
  }
}

class SnippetNavigatorWithArgumentsMyOtherPage extends StatelessWidget {
  const SnippetNavigatorWithArgumentsMyOtherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('Arguments: $args'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Back to home'),
            ),
          ],
        ),
      ),
    );
  }
}
