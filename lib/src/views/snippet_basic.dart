import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/components/app_bottom_navigation_bar.dart';
import 'package:flutter_snippets/src/constants/text_title.dart';

class SnippetBasic extends StatelessWidget {
  const SnippetBasic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(TEXT_TITLE_BASIC),
        ),
        body: Center(
          child: Text('Básico'),
        ),
        bottomNavigationBar: AppBottomNavigationBar(
          index: 0,
        ),
      ),
    );
  }
}
