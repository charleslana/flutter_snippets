import 'package:flutter/material.dart';

class SnippetActionChip extends StatelessWidget {
  const SnippetActionChip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ActionChip(
          label: const Text('Delete'),
          labelStyle: const TextStyle(color: Colors.white),
          avatar: const Icon(
            Icons.delete,
            color: Colors.white,
          ),
          backgroundColor: Colors.black54,
          onPressed: () {},
        ),
      ),
    );
  }
}
