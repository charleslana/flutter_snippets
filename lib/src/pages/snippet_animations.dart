import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/components/app_bottom_navigation_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_snippets/src/widgets/list_icons_app_bar_widget.dart';

class SnippetAnimations extends StatelessWidget {
  const SnippetAnimations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.appBarTitleAnimations),
          actions: ListIconsAppBarWidget().listWidgets,
        ),
        body: Center(
          child: Text('Coming soon'),
        ),
        bottomNavigationBar: AppBottomNavigationBar(
          index: 3,
        ),
      ),
    );
  }
}
