import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/components/app_bottom_navigation_bar.dart';
import 'package:flutter_snippets/src/components/app_menu.dart';
import 'package:flutter_snippets/src/constants/app_constants.dart';
import 'package:flutter_snippets/src/models/snippet_show_model.dart';
import 'package:flutter_snippets/src/routes/app_routes.dart';
import 'package:flutter_snippets/src/snippets/snippet_safe_area.dart';
import 'package:flutter_snippets/src/snippets/snippet_stateful.dart';
import 'package:flutter_snippets/src/snippets/snippet_stateless.dart';

class SnippetWidgets extends StatelessWidget {
  const SnippetWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppConstants.TEXT_TITLE_WIDGETS),
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  AppConstants.TEXT_MENU_WIDGETS_CREATE,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
              AppMenu(
                text: AppConstants.TEXT_MENU_WIDGET_STATELESS,
                icon: Icons.flip_to_front,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.SNIPPET_SHOW,
                  arguments: SnippetShowModel(
                    data: AppConstants.TXT_SNIPPET_WIDGET_STATELESS,
                    title: AppConstants.TEXT_MENU_WIDGET_STATELESS,
                    bottomNavigationBarIndex: 2,
                    widget: SnippetStateless(),
                  ),
                ),
              ),
              AppMenu(
                text: AppConstants.TEXT_MENU_WIDGET_STATEFUL,
                icon: Icons.swap_vert,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.SNIPPET_SHOW,
                  arguments: SnippetShowModel(
                    data: AppConstants.TXT_SNIPPET_WIDGET_STATEFUL,
                    title: AppConstants.TEXT_MENU_WIDGET_STATEFUL,
                    bottomNavigationBarIndex: 2,
                    widget: SnippetStateful(),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  AppConstants.TEXT_MENU_WIDGETS_BASIC,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
              AppMenu(
                text: AppConstants.TEXT_MENU_WIDGET_SAFEAREA,
                icon: Icons.phonelink_lock,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.SNIPPET_SHOW,
                  arguments: SnippetShowModel(
                    data: AppConstants.TXT_SNIPPET_WIDGET_SAFEAREA,
                    title: AppConstants.TEXT_MENU_WIDGET_SAFEAREA,
                    bottomNavigationBarIndex: 2,
                    widget: SnippetSafeArea(),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: AppBottomNavigationBar(
          index: 2,
        ),
      ),
    );
  }
}
