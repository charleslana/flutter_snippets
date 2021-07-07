import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/components/app_bottom_navigation_bar.dart';
import 'package:flutter_snippets/src/constants/text_title.dart';

class SnippetWidgets extends StatelessWidget {
  const SnippetWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(TEXT_TITLE_WIDGETS),
        ),
        body: Center(
          child: Text('Widgets'),
        ),
        bottomNavigationBar: AppBottomNavigationBar(
          index: 2,
        ),
      ),
    );
  }
}
