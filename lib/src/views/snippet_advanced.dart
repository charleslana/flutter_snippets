import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/components/app_bottom_navigation_bar.dart';
import 'package:flutter_snippets/src/components/app_menu.dart';
import 'package:flutter_snippets/src/constants/app_constants.dart';
import 'package:flutter_snippets/src/models/snippet_filter_list_model.dart';
import 'package:flutter_snippets/src/models/snippet_filter_model.dart';
import 'package:flutter_snippets/src/models/snippet_show_model.dart';
import 'package:flutter_snippets/src/routes/app_routes.dart';

class SnippetAdvanced extends StatelessWidget {
  const SnippetAdvanced({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppConstants.TEXT_TITLE_ADVANCED),
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  AppConstants.TEXT_MENU_ADVANCED_DART,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
              AppMenu(
                text: AppConstants.TEXT_MENU_ADVANCED_CLASSES,
                icon: Icons.class_,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.SNIPPET_FILTER,
                  arguments: SnippetFilterModel(
                    title: AppConstants.TEXT_MENU_ADVANCED_CLASSES,
                    snippets: [
                      SnippetFilterListModel(
                        text: AppConstants
                            .TEXT_MENU_ADVANCED_CLASSES_FILTER_CLASSES,
                        onPressed: () => Navigator.of(context).pushNamed(
                          AppRoutes.SNIPPET_SHOW,
                          arguments: SnippetShowModel(
                            data: AppConstants.TXT_SNIPPET_CLASS,
                            title: AppConstants
                                .TEXT_MENU_ADVANCED_CLASSES_FILTER_CLASSES,
                            bottomNavigationBarIndex: 1,
                          ),
                        ),
                      ),
                      SnippetFilterListModel(
                        text: AppConstants
                            .TEXT_MENU_ADVANCED_CLASSES_FILTER_PRIVATE_PUBLIC,
                        onPressed: () => Navigator.of(context).pushNamed(
                          AppRoutes.SNIPPET_SHOW,
                          arguments: SnippetShowModel(
                            data: AppConstants.TXT_SNIPPET_CLASS_PRIVATE_PUBLIC,
                            title: AppConstants
                                .TEXT_MENU_ADVANCED_CLASSES_FILTER_PRIVATE_PUBLIC,
                            bottomNavigationBarIndex: 1,
                          ),
                        ),
                      ),
                      SnippetFilterListModel(
                        text: AppConstants
                            .TEXT_MENU_ADVANCED_CLASSES_FILTER_GETTER_SETTER,
                        onPressed: () => Navigator.of(context).pushNamed(
                          AppRoutes.SNIPPET_SHOW,
                          arguments: SnippetShowModel(
                            data: AppConstants.TXT_SNIPPET_CLASS_GETTER_SETTER,
                            title: AppConstants
                                .TEXT_MENU_ADVANCED_CLASSES_FILTER_GETTER_SETTER,
                            bottomNavigationBarIndex: 1,
                          ),
                        ),
                      ),
                      SnippetFilterListModel(
                        text: AppConstants
                            .TEXT_MENU_ADVANCED_CLASSES_FILTER_CONSTRUCTOR,
                        onPressed: () => Navigator.of(context).pushNamed(
                          AppRoutes.SNIPPET_SHOW,
                          arguments: SnippetShowModel(
                            data: AppConstants.TXT_SNIPPET_CLASS_CONSTRUCTOR,
                            title: AppConstants
                                .TEXT_MENU_ADVANCED_CLASSES_FILTER_CONSTRUCTOR,
                            bottomNavigationBarIndex: 1,
                          ),
                        ),
                      ),
                      SnippetFilterListModel(
                        text: AppConstants
                            .TEXT_MENU_ADVANCED_CLASSES_FILTER_EXTENDS,
                        onPressed: () => Navigator.of(context).pushNamed(
                          AppRoutes.SNIPPET_SHOW,
                          arguments: SnippetShowModel(
                            data: AppConstants.TXT_SNIPPET_CLASS_EXTENDS,
                            title: AppConstants
                                .TEXT_MENU_ADVANCED_CLASSES_FILTER_EXTENDS,
                            bottomNavigationBarIndex: 1,
                          ),
                        ),
                      ),
                      SnippetFilterListModel(
                        text: AppConstants
                            .TEXT_MENU_ADVANCED_CLASSES_FILTER_ABSTRACT,
                        onPressed: () => Navigator.of(context).pushNamed(
                          AppRoutes.SNIPPET_SHOW,
                          arguments: SnippetShowModel(
                            data: AppConstants.TXT_SNIPPET_CLASS_ABSTRACT,
                            title: AppConstants
                                .TEXT_MENU_ADVANCED_CLASSES_FILTER_ABSTRACT,
                            bottomNavigationBarIndex: 1,
                          ),
                        ),
                      ),
                      SnippetFilterListModel(
                        text: AppConstants
                            .TEXT_MENU_ADVANCED_CLASSES_FILTER_IMPLEMENTS,
                        onPressed: () => Navigator.of(context).pushNamed(
                          AppRoutes.SNIPPET_SHOW,
                          arguments: SnippetShowModel(
                            data: AppConstants.TXT_SNIPPET_CLASS_IMPLEMENTS,
                            title: AppConstants
                                .TEXT_MENU_ADVANCED_CLASSES_FILTER_IMPLEMENTS,
                            bottomNavigationBarIndex: 1,
                          ),
                        ),
                      ),
                      SnippetFilterListModel(
                        text: AppConstants
                            .TEXT_MENU_ADVANCED_CLASSES_FILTER_POLYMORPHISM,
                        onPressed: () => Navigator.of(context).pushNamed(
                          AppRoutes.SNIPPET_SHOW,
                          arguments: SnippetShowModel(
                            data: AppConstants.TXT_SNIPPET_CLASS_POLYMORPHISM,
                            title: AppConstants
                                .TEXT_MENU_ADVANCED_CLASSES_FILTER_POLYMORPHISM,
                            bottomNavigationBarIndex: 1,
                          ),
                        ),
                      ),
                    ],
                    bottomNavigationBarIndex: 1,
                  ),
                ),
              ),
              AppMenu(
                text: AppConstants.TEXT_MENU_ADVANCED_LIST,
                icon: Icons.list,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.SNIPPET_SHOW,
                  arguments: SnippetShowModel(
                    data: AppConstants.TXT_SNIPPET_LIST,
                    title: AppConstants.TEXT_MENU_ADVANCED_LIST,
                    bottomNavigationBarIndex: 1,
                  ),
                ),
              ),
              AppMenu(
                text: AppConstants.TEXT_MENU_ADVANCED_MAP,
                icon: Icons.map,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.SNIPPET_SHOW,
                  arguments: SnippetShowModel(
                    data: AppConstants.TXT_SNIPPET_MAP,
                    title: AppConstants.TEXT_MENU_ADVANCED_MAP,
                    bottomNavigationBarIndex: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: AppBottomNavigationBar(
          index: 1,
        ),
      ),
    );
  }
}
