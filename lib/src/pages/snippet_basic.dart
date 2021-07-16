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
                  AppRoutes.SNIPPET_SHOW,
                  arguments: SnippetShowModel(
                    data: AppConstants.TXT_SNIPPET_COMMENTS,
                    title: AppLocalizations.of(context)!.menuBasicComments,
                    bottomNavigationBarIndex: 0,
                  ),
                ),
              ),
              AppMenu(
                text: AppLocalizations.of(context)!.menuBasicVariables,
                icon: Icons.memory,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.SNIPPET_SHOW,
                  arguments: SnippetShowModel(
                    data: AppConstants.TXT_SNIPPET_VARIABLES,
                    title: AppLocalizations.of(context)!.menuBasicVariables,
                    bottomNavigationBarIndex: 0,
                  ),
                ),
              ),
              AppMenu(
                text: AppLocalizations.of(context)!.menuBasicNomenclatures,
                icon: Icons.create,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.SNIPPET_SHOW,
                  arguments: SnippetShowModel(
                    data: AppConstants.TXT_SNIPPET_NOMENCLATURES,
                    title: AppLocalizations.of(context)!.menuBasicNomenclatures,
                    bottomNavigationBarIndex: 0,
                  ),
                ),
              ),
              AppMenu(
                text: AppLocalizations.of(context)!.menuBasicTypes,
                icon: Icons.title,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.SNIPPET_SHOW,
                  arguments: SnippetShowModel(
                    data: AppConstants.TXT_SNIPPET_TYPES,
                    title: AppLocalizations.of(context)!.menuBasicTypes,
                    bottomNavigationBarIndex: 0,
                  ),
                ),
              ),
              AppMenu(
                text: AppLocalizations.of(context)!.menuBasicMathOperations,
                icon: Icons.calculate,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.SNIPPET_SHOW,
                  arguments: SnippetShowModel(
                    data: AppConstants.TXT_SNIPPET_MATH_OPERATIONS,
                    title:
                        AppLocalizations.of(context)!.menuBasicMathOperations,
                    bottomNavigationBarIndex: 0,
                  ),
                ),
              ),
              AppMenu(
                text: AppLocalizations.of(context)!
                    .menuBasicConcatenationStrings,
                icon: Icons.text_snippet,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.SNIPPET_SHOW,
                  arguments: SnippetShowModel(
                    data: AppConstants.TXT_SNIPPET_CONCATENATION_STRINGS,
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
                  AppRoutes.SNIPPET_SHOW,
                  arguments: SnippetShowModel(
                    data: AppConstants.TXT_SNIPPET_NULL_SAFETY,
                    title: AppLocalizations.of(context)!.menuBasicNullSafety,
                    bottomNavigationBarIndex: 0,
                  ),
                ),
              ),
              AppMenu(
                text: AppLocalizations.of(context)!.menuBasicFluxControl,
                icon: Icons.repeat,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.SNIPPET_SHOW,
                  arguments: SnippetShowModel(
                    data: AppConstants.TXT_SNIPPET_FLUX_CONTROL,
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
                  AppRoutes.SNIPPET_SHOW,
                  arguments: SnippetShowModel(
                    data: AppConstants.TXT_SNIPPET_FUNCTIONS_PARAMETERS,
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
