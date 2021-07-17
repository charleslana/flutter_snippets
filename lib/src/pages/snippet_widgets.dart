import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/components/app_bottom_navigation_bar.dart';
import 'package:flutter_snippets/src/components/app_menu.dart';
import 'package:flutter_snippets/src/constants/app_constants.dart';
import 'package:flutter_snippets/src/models/snippet_filter_list_model.dart';
import 'package:flutter_snippets/src/models/snippet_filter_model.dart';
import 'package:flutter_snippets/src/models/snippet_show_model.dart';
import 'package:flutter_snippets/src/pages/snippet_container.dart';
import 'package:flutter_snippets/src/routes/app_routes.dart';
import 'package:flutter_snippets/src/snippets/snippet_circular_progress_indicator.dart';
import 'package:flutter_snippets/src/snippets/snippet_safe_area.dart';
import 'package:flutter_snippets/src/snippets/snippet_stateful.dart';
import 'package:flutter_snippets/src/snippets/snippet_stateless.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_snippets/src/snippets/snippet_text.dart';
import 'package:flutter_snippets/src/snippets/snippet_text_overflow.dart';
import 'package:flutter_snippets/src/widgets/list_icons_app_bar_widget.dart';

class SnippetWidgets extends StatelessWidget {
  const SnippetWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.appBarTitleWidget),
          actions: ListIconsAppBarWidget().listWidgets,
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  AppLocalizations.of(context)!.menuWidget,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ),
              ),
              AppMenu(
                text: AppLocalizations.of(context)!.menuWidgetCreate,
                icon: Icons.add,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetFilter,
                  arguments: SnippetFilterModel(
                    title: AppLocalizations.of(context)!.menuWidgetCreate,
                    snippets: [
                      SnippetFilterListModel(
                        text: AppLocalizations.of(context)!
                            .menuWidgetCreateStateless,
                        onPressed: () => Navigator.of(context).pushNamed(
                          AppRoutes.snippetShow,
                          arguments: SnippetShowModel(
                            data: AppConstants.txtSnippetWidgetStateless,
                            title: AppLocalizations.of(context)!
                                .menuWidgetCreateStateless,
                            bottomNavigationBarIndex: 2,
                            widget: SnippetStateless(),
                          ),
                        ),
                      ),
                      SnippetFilterListModel(
                        text: AppLocalizations.of(context)!
                            .menuWidgetCreateStateful,
                        onPressed: () => Navigator.of(context).pushNamed(
                          AppRoutes.snippetShow,
                          arguments: SnippetShowModel(
                            data: AppConstants.txtSnippetWidgetStateful,
                            title: AppLocalizations.of(context)!
                                .menuWidgetCreateStateful,
                            bottomNavigationBarIndex: 2,
                            widget: SnippetStateful(),
                          ),
                        ),
                      ),
                    ],
                    bottomNavigationBarIndex: 2,
                  ),
                ),
              ),
              AppMenu(
                text: AppLocalizations.of(context)!.menuWidgetBasic,
                icon: Icons.flip_to_front,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetFilter,
                  arguments: SnippetFilterModel(
                    title: AppLocalizations.of(context)!.menuWidgetBasic,
                    snippets: [
                      SnippetFilterListModel(
                        text: AppLocalizations.of(context)!
                            .menuWidgetBasicSafeArea,
                        onPressed: () => Navigator.of(context).pushNamed(
                          AppRoutes.snippetShow,
                          arguments: SnippetShowModel(
                            data: AppConstants.txtSnippetWidgetSafeArea,
                            title: AppLocalizations.of(context)!
                                .menuWidgetBasicSafeArea,
                            bottomNavigationBarIndex: 2,
                            widget: SnippetSafeArea(),
                          ),
                        ),
                      ),
                      SnippetFilterListModel(
                        text: AppLocalizations.of(context)!
                            .menuWidgetBasicCircularProgressIndicator,
                        onPressed: () => Navigator.of(context).pushNamed(
                          AppRoutes.snippetShow,
                          arguments: SnippetShowModel(
                            data: AppConstants
                                .txtSnippetWidgetCircularProgressIndicator,
                            title: AppLocalizations.of(context)!
                                .menuWidgetBasicCircularProgressIndicator,
                            bottomNavigationBarIndex: 2,
                            widget: SnippetCircularProgressIndicator(),
                          ),
                        ),
                      ),
                      SnippetFilterListModel(
                        text: AppLocalizations.of(context)!
                            .menuWidgetBasicContainer,
                        onPressed: () => Navigator.of(context).pushNamed(
                          AppRoutes.snippetShow,
                          arguments: SnippetShowModel(
                            data: AppConstants.txtSnippetWidgetContainer,
                            title: AppLocalizations.of(context)!
                                .menuWidgetBasicContainer,
                            bottomNavigationBarIndex: 2,
                            widget: SnippetContainer(),
                          ),
                        ),
                      ),
                      SnippetFilterListModel(
                        text: AppLocalizations.of(context)!.menuWidgetBasicText,
                        onPressed: () => Navigator.of(context).pushNamed(
                          AppRoutes.snippetShow,
                          arguments: SnippetShowModel(
                            data: AppConstants.txtSnippetWidgetText,
                            title: AppLocalizations.of(context)!
                                .menuWidgetBasicText,
                            bottomNavigationBarIndex: 2,
                            widget: SnippetText(),
                          ),
                        ),
                      ),
                      SnippetFilterListModel(
                        text: AppLocalizations.of(context)!
                            .menuWidgetBasicTextOverflow,
                        onPressed: () => Navigator.of(context).pushNamed(
                          AppRoutes.snippetShow,
                          arguments: SnippetShowModel(
                            data: AppConstants.txtSnippetWidgetTextOverflow,
                            title: AppLocalizations.of(context)!
                                .menuWidgetBasicTextOverflow,
                            bottomNavigationBarIndex: 2,
                            widget: SnippetTextOverflow(),
                          ),
                        ),
                      ),
                    ],
                    bottomNavigationBarIndex: 2,
                  ),
                ),
              ),
              AppMenu(
                text: AppLocalizations.of(context)!.menuWidgetAdvanced,
                icon: Icons.swap_vert,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetFilter,
                  arguments: SnippetFilterModel(
                    title: AppLocalizations.of(context)!.menuWidgetAdvanced,
                    snippets: [],
                    bottomNavigationBarIndex: 2,
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
