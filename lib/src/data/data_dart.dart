import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_snippets/src/constants/app_constants.dart';
import 'package:flutter_snippets/src/models/snippet_filter_list_model.dart';
import 'package:flutter_snippets/src/models/snippet_filter_model.dart';
import 'package:flutter_snippets/src/models/snippet_show_model.dart';
import 'package:flutter_snippets/src/routes/app_routes.dart';
import 'package:flutter_snippets/src/widgets/app_menu.dart';

Set<AppMenu> getDataDart(BuildContext context) {
  return {
    AppMenu(
      text: AppLocalizations.of(context)!.menuDartBasicDart,
      icon: Icons.source,
      onPressed: () => Navigator.of(context).pushNamed(
        AppRoutes.snippetFilter,
        arguments: SnippetFilterModel(
          title: AppLocalizations.of(context)!.menuDartBasicDart,
          snippets: [
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuDartBasicComments,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtDartComments,
                  title: AppLocalizations.of(context)!.menuDartBasicComments,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuDartBasicVariables,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtDartVariables,
                  title: AppLocalizations.of(context)!.menuDartBasicVariables,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuDartBasicNomenclatures,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtDartNomenclatures,
                  title:
                      AppLocalizations.of(context)!.menuDartBasicNomenclatures,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuDartBasicTypes,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtDartTypes,
                  title: AppLocalizations.of(context)!.menuDartBasicTypes,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuDartBasicMathOperations,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtDartMathOperations,
                  title:
                      AppLocalizations.of(context)!.menuDartBasicMathOperations,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!
                  .menuDartBasicConcatenationStrings,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtDartConcatenationStrings,
                  title: AppLocalizations.of(context)!
                      .menuDartBasicConcatenationStrings,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuDartBasicNullSafety,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtDartNullSafety,
                  title: AppLocalizations.of(context)!.menuDartBasicNullSafety,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuDartBasicFluxControl,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtDartFluxControl,
                  title: AppLocalizations.of(context)!.menuDartBasicFluxControl,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!
                  .menuDartBasicFunctionsParameters,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtDartFunctionsParameters,
                  title: AppLocalizations.of(context)!
                      .menuDartBasicFunctionsParameters,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    AppMenu(
      text: AppLocalizations.of(context)!.menuDartAdvancedDart,
      icon: Icons.integration_instructions,
      onPressed: () => Navigator.of(context).pushNamed(
        AppRoutes.snippetFilter,
        arguments: SnippetFilterModel(
          title: AppLocalizations.of(context)!.menuDartAdvancedDart,
          snippets: [
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuDartAdvancedFilterClass,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtDartClass,
                  title:
                      AppLocalizations.of(context)!.menuDartAdvancedFilterClass,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!
                  .menuDartAdvancedFilterPrivatePublic,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtDartClassPrivatePublic,
                  title: AppLocalizations.of(context)!
                      .menuDartAdvancedFilterPrivatePublic,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!
                  .menuDartAdvancedFilterGetterSetter,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtDartClassGetterSetter,
                  title: AppLocalizations.of(context)!
                      .menuDartAdvancedFilterGetterSetter,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!
                  .menuDartAdvancedFilterConstructor,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtDartClassConstructor,
                  title: AppLocalizations.of(context)!
                      .menuDartAdvancedFilterConstructor,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuDartAdvancedFilterExtends,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtDartClassExtends,
                  title: AppLocalizations.of(context)!
                      .menuDartAdvancedFilterExtends,
                ),
              ),
            ),
            SnippetFilterListModel(
              text:
                  AppLocalizations.of(context)!.menuDartAdvancedFilterAbstract,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtDartClassAbstract,
                  title: AppLocalizations.of(context)!
                      .menuDartAdvancedFilterAbstract,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!
                  .menuDartAdvancedFilterImplements,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtDartClassImplements,
                  title: AppLocalizations.of(context)!
                      .menuDartAdvancedFilterImplements,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!
                  .menuDartAdvancedFilterPolymorphism,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtDartClassPolymorphism,
                  title: AppLocalizations.of(context)!
                      .menuDartAdvancedFilterPolymorphism,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuDartAdvancedList,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtDartList,
                  title: AppLocalizations.of(context)!.menuDartAdvancedList,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuDartAdvancedMap,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtDartMap,
                  title: AppLocalizations.of(context)!.menuDartAdvancedMap,
                ),
              ),
            ),
            SnippetFilterListModel(
              text:
                  AppLocalizations.of(context)!.menuDartAdvancedOperatorSpread,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtDartOperatorSpread,
                  title: AppLocalizations.of(context)!
                      .menuDartAdvancedOperatorSpread,
                ),
              ),
            ),
            SnippetFilterListModel(
              text:
                  AppLocalizations.of(context)!.menuDartAdvancedCascadeOperator,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtDartCascadeOperator,
                  title: AppLocalizations.of(context)!
                      .menuDartAdvancedCascadeOperator,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuDartAdvancedPubSpec,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtDartPubSpec,
                  title: AppLocalizations.of(context)!.menuDartAdvancedPubSpec,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuDartAdvancedTypedef,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtDartTypedef,
                  title: AppLocalizations.of(context)!.menuDartAdvancedTypedef,
                ),
              ),
              isNew: true,
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuDartAdvancedSplit,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtDartSplit,
                  title: AppLocalizations.of(context)!.menuDartAdvancedSplit,
                ),
              ),
              isNew: true,
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuDartAdvancedJoin,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtDartJoin,
                  title: AppLocalizations.of(context)!.menuDartAdvancedJoin,
                ),
              ),
              isNew: true,
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuDartAdvancedConvert,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtDartConvert,
                  title: AppLocalizations.of(context)!.menuDartAdvancedConvert,
                ),
              ),
              isNew: true,
            ),
          ],
        ),
      ),
    ),
  };
}
