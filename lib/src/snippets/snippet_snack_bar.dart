import 'package:flutter/material.dart';

class SnippetSnackBar extends StatelessWidget {
  const SnippetSnackBar({Key? key}) : super(key: key);

  void _showMessage(String text, BuildContext context) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text),
        action: SnackBarAction(
          label: 'Close',
          onPressed: () => {},
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showMessage('My snackbar', context),
          child: const Text('Open snackBar'),
        ),
      ),
    );
  }
}
