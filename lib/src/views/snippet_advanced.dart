import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/components/app_bottom_navigation_bar.dart';
import 'package:flutter_snippets/src/constants/app_constants.dart';

class SnippetAdvanced extends StatelessWidget {
  const SnippetAdvanced({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppConstants.TEXT_TITLE_ADVANCED),
        ),
        body: Center(
          child: Text('Avançado'),
        ),
        bottomNavigationBar: AppBottomNavigationBar(
          index: 1,
        ),
      ),
    );
  }
}
