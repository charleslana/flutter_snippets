import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/components/app_bottom_navigation_bar.dart';
import 'package:flutter_snippets/src/components/app_menu.dart';
import 'package:flutter_snippets/src/constants/app_constants.dart';
import 'package:flutter_snippets/src/models/snippet_filter_list_model.dart';
import 'package:flutter_snippets/src/models/snippet_filter_model.dart';
import 'package:flutter_snippets/src/models/snippet_show_model.dart';
import 'package:flutter_snippets/src/routes/app_routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_snippets/src/widgets/list_icons_app_bar_widget.dart';

class SnippetAdvanced extends StatelessWidget {
  const SnippetAdvanced({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.appBarTitleAdvanced),
          actions: ListIconsAppBarWidget().listWidgets,
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  AppLocalizations.of(context)!.menuAdvancedDart,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ),
              ),
              AppMenu(
                text: AppLocalizations.of(context)!.menuAdvancedClasses,
                icon: Icons.class_,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetFilter,
                  arguments: SnippetFilterModel(
                    title: AppLocalizations.of(context)!.menuAdvancedClasses,
                    snippets: [
                      SnippetFilterListModel(
                        text: AppLocalizations.of(context)!
                            .menuAdvancedFilterClasses,
                        onPressed: () => Navigator.of(context).pushNamed(
                          AppRoutes.snippetShow,
                          arguments: SnippetShowModel(
                            data: AppConstants.txtSnippetClass,
                            title: AppLocalizations.of(context)!
                                .menuAdvancedFilterClasses,
                            bottomNavigationBarIndex: 1,
                          ),
                        ),
                      ),
                      SnippetFilterListModel(
                        text: AppLocalizations.of(context)!
                            .menuAdvancedFilterPrivatePublic,
                        onPressed: () => Navigator.of(context).pushNamed(
                          AppRoutes.snippetShow,
                          arguments: SnippetShowModel(
                            data: AppConstants.txtSnippetClassPrivatePublic,
                            title: AppLocalizations.of(context)!
                                .menuAdvancedFilterPrivatePublic,
                            bottomNavigationBarIndex: 1,
                          ),
                        ),
                      ),
                      SnippetFilterListModel(
                        text: AppLocalizations.of(context)!
                            .menuAdvancedFilterGetterSetter,
                        onPressed: () => Navigator.of(context).pushNamed(
                          AppRoutes.snippetShow,
                          arguments: SnippetShowModel(
                            data: AppConstants.txtSnippetClassGetterSetter,
                            title: AppLocalizations.of(context)!
                                .menuAdvancedFilterGetterSetter,
                            bottomNavigationBarIndex: 1,
                          ),
                        ),
                      ),
                      SnippetFilterListModel(
                        text: AppLocalizations.of(context)!
                            .menuAdvancedFilterConstructor,
                        onPressed: () => Navigator.of(context).pushNamed(
                          AppRoutes.snippetShow,
                          arguments: SnippetShowModel(
                            data: AppConstants.txtSnippetClassConstructor,
                            title: AppLocalizations.of(context)!
                                .menuAdvancedFilterConstructor,
                            bottomNavigationBarIndex: 1,
                          ),
                        ),
                      ),
                      SnippetFilterListModel(
                        text: AppLocalizations.of(context)!
                            .menuAdvancedFilterExtends,
                        onPressed: () => Navigator.of(context).pushNamed(
                          AppRoutes.snippetShow,
                          arguments: SnippetShowModel(
                            data: AppConstants.txtSnippetClassExtends,
                            title: AppLocalizations.of(context)!
                                .menuAdvancedFilterExtends,
                            bottomNavigationBarIndex: 1,
                          ),
                        ),
                      ),
                      SnippetFilterListModel(
                        text: AppLocalizations.of(context)!
                            .menuAdvancedFilterAbstract,
                        onPressed: () => Navigator.of(context).pushNamed(
                          AppRoutes.snippetShow,
                          arguments: SnippetShowModel(
                            data: AppConstants.txtSnippetClassAbstract,
                            title: AppLocalizations.of(context)!
                                .menuAdvancedFilterAbstract,
                            bottomNavigationBarIndex: 1,
                          ),
                        ),
                      ),
                      SnippetFilterListModel(
                        text: AppLocalizations.of(context)!
                            .menuAdvancedFilterImplements,
                        onPressed: () => Navigator.of(context).pushNamed(
                          AppRoutes.snippetShow,
                          arguments: SnippetShowModel(
                            data: AppConstants.txtSnippetClassImplements,
                            title: AppLocalizations.of(context)!
                                .menuAdvancedFilterImplements,
                            bottomNavigationBarIndex: 1,
                          ),
                        ),
                      ),
                      SnippetFilterListModel(
                        text: AppLocalizations.of(context)!
                            .menuAdvancedFilterPolymorphism,
                        onPressed: () => Navigator.of(context).pushNamed(
                          AppRoutes.snippetShow,
                          arguments: SnippetShowModel(
                            data: AppConstants.txtSnippetClassPolymorphism,
                            title: AppLocalizations.of(context)!
                                .menuAdvancedFilterPolymorphism,
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
                text: AppLocalizations.of(context)!.menuAdvancedList,
                icon: Icons.list,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetList,
                    title: AppLocalizations.of(context)!.menuAdvancedList,
                    bottomNavigationBarIndex: 1,
                  ),
                ),
              ),
              AppMenu(
                text: AppLocalizations.of(context)!.menuAdvancedMap,
                icon: Icons.map,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetMap,
                    title: AppLocalizations.of(context)!.menuAdvancedMap,
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
