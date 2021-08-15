import 'package:flutter/material.dart';

class SnippetSelectableText extends StatelessWidget {
  const SnippetSelectableText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SelectableText(
          'Hello Flutter Developer',
          cursorColor: Colors.red,
          showCursor: true,
          toolbarOptions: const ToolbarOptions(
            copy: true,
            selectAll: true,
          ),
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
