import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/components/app_bottom_navigation_bar.dart';
import 'package:flutter_snippets/src/constants/app_constants.dart';
import 'package:flutter_snippets/src/widget/change_theme_button_widget.dart';

class SnippetAnimations extends StatelessWidget {
  const SnippetAnimations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppConstants.TEXT_TITLE_ANIMATIONS),
          actions: [
            ChangeThemeButtonWidget(),
          ],
        ),
        body: Center(
          child: Text('Animações'),
        ),
        bottomNavigationBar: AppBottomNavigationBar(
          index: 3,
        ),
      ),
    );
  }
}
