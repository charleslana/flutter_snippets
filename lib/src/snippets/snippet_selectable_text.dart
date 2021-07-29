import 'package:flutter/material.dart';

class SnippetSelectableText extends StatelessWidget {
  const SnippetSelectableText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Copy text'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SelectableText(
          'Hello Flutter Developer',
          cursorColor: Colors.red,
          showCursor: true,
          toolbarOptions: ToolbarOptions(
            copy: true,
            selectAll: true,
            cut: false,
            paste: false,
          ),
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
