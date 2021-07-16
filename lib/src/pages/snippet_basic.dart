import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/components/app_bottom_navigation_bar.dart';
import 'package:flutter_snippets/src/components/app_menu.dart';
import 'package:flutter_snippets/src/constants/app_constants.dart';
import 'package:flutter_snippets/src/models/snippet_show_model.dart';
import 'package:flutter_snippets/src/routes/app_routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_snippets/src/widgets/list_icons_app_bar_widget.dart';

class SnippetBasic extends StatelessWidget {
  const SnippetBasic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.appBarTitleBasic,
          ),
          actions: ListIconsAppBarWidget().listWidgets,
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  AppLocalizations.of(context)!.menuBasicDart,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ),
              ),
              AppMenu(
                text: AppLocalizations.of(context)!.menuBasicComments,
                icon: Icons.textsms,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetComments,
                    title: AppLocalizations.of(context)!.menuBasicComments,
                    bottomNavigationBarIndex: 0,
                  ),
                ),
              ),
              AppMenu(
                text: AppLocalizations.of(context)!.menuBasicVariables,
                icon: Icons.memory,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetVariables,
                    title: AppLocalizations.of(context)!.menuBasicVariables,
                    bottomNavigationBarIndex: 0,
                  ),
                ),
              ),
              AppMenu(
                text: AppLocalizations.of(context)!.menuBasicNomenclatures,
                icon: Icons.create,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetNomenclatures,
                    title: AppLocalizations.of(context)!.menuBasicNomenclatures,
                    bottomNavigationBarIndex: 0,
                  ),
                ),
              ),
              AppMenu(
                text: AppLocalizations.of(context)!.menuBasicTypes,
                icon: Icons.title,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetTypes,
                    title: AppLocalizations.of(context)!.menuBasicTypes,
                    bottomNavigationBarIndex: 0,
                  ),
                ),
              ),
              AppMenu(
                text: AppLocalizations.of(context)!.menuBasicMathOperations,
                icon: Icons.calculate,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetMathOperations,
                    title:
                        AppLocalizations.of(context)!.menuBasicMathOperations,
                    bottomNavigationBarIndex: 0,
                  ),
                ),
              ),
              AppMenu(
                text:
                    AppLocalizations.of(context)!.menuBasicConcatenationStrings,
                icon: Icons.text_snippet,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetConcatenationStrings,
                    title: AppLocalizations.of(context)!
                        .menuBasicConcatenationStrings,
                    bottomNavigationBarIndex: 0,
                  ),
                ),
              ),
              AppMenu(
                text: AppLocalizations.of(context)!.menuBasicNullSafety,
                icon: Icons.vpn_key,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetNullSafety,
                    title: AppLocalizations.of(context)!.menuBasicNullSafety,
                    bottomNavigationBarIndex: 0,
                  ),
                ),
              ),
              AppMenu(
                text: AppLocalizations.of(context)!.menuBasicFluxControl,
                icon: Icons.repeat,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetFluxControl,
                    title: AppLocalizations.of(context)!.menuBasicFluxControl,
                    bottomNavigationBarIndex: 0,
                  ),
                ),
              ),
              AppMenu(
                text:
                    AppLocalizations.of(context)!.menuBasicFunctionsParameters,
                icon: Icons.functions,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetFunctionsParameters,
                    title: AppLocalizations.of(context)!
                        .menuBasicFunctionsParameters,
                    bottomNavigationBarIndex: 0,
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: AppBottomNavigationBar(
          index: 0,
        ),
      ),
    );
  }
}
