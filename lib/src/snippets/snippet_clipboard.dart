import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SnippetClipboard extends StatelessWidget {
  const SnippetClipboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {},
            child: const SnippetClipboardCustomToolTip(
                text: 'Tap here to copy text'),
          ),
          const TextField(
            decoration: InputDecoration(hintText: 'Paste here'),
          ),
        ],
      ),
    );
  }
}

class SnippetClipboardCustomToolTip extends StatelessWidget {
  const SnippetClipboardCustomToolTip({required this.text, Key? key})
      : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Clipboard.setData(ClipboardData(text: text)).then((_) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Copied'),
            ),
          );
        });
      },
      child: Tooltip(
        preferBelow: false,
        message: 'Copy',
        child: Text(text),
      ),
    );
  }
}
