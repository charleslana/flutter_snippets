import 'package:flutter/material.dart';

class SnippetSelectableText extends StatelessWidget {
  const SnippetSelectableText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SelectableText('SelectableText'),
      ),
    );
  }
}
