import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_snippets/src/constants/app_constants.dart';
import 'package:flutter_snippets/src/models/snippet_filter_list_model.dart';
import 'package:flutter_snippets/src/models/snippet_filter_model.dart';
import 'package:flutter_snippets/src/models/snippet_show_model.dart';
import 'package:flutter_snippets/src/routes/app_routes.dart';
import 'package:flutter_snippets/src/widgets/app_menu.dart';

class DataDart {
  static Set<AppMenu> of(BuildContext context) {
    return {
      AppMenu(
        text: AppLocalizations.of(context)!.menuBasicDart,
        icon: Icons.source,
        onPressed: () => Navigator.of(context).pushNamed(
          AppRoutes.snippetFilter,
          arguments: SnippetFilterModel(
            title: AppLocalizations.of(context)!.menuBasicDart,
            snippets: [
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuBasicComments,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetComments,
                    title: AppLocalizations.of(context)!.menuBasicComments,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuBasicVariables,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetVariables,
                    title: AppLocalizations.of(context)!.menuBasicVariables,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuBasicNomenclatures,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetNomenclatures,
                    title: AppLocalizations.of(context)!.menuBasicNomenclatures,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuBasicTypes,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetTypes,
                    title: AppLocalizations.of(context)!.menuBasicTypes,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuBasicMathOperations,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetMathOperations,
                    title:
                        AppLocalizations.of(context)!.menuBasicMathOperations,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text:
                    AppLocalizations.of(context)!.menuBasicConcatenationStrings,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetConcatenationStrings,
                    title: AppLocalizations.of(context)!
                        .menuBasicConcatenationStrings,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuBasicNullSafety,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetNullSafety,
                    title: AppLocalizations.of(context)!.menuBasicNullSafety,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuBasicFluxControl,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetFluxControl,
                    title: AppLocalizations.of(context)!.menuBasicFluxControl,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text:
                    AppLocalizations.of(context)!.menuBasicFunctionsParameters,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetFunctionsParameters,
                    title: AppLocalizations.of(context)!
                        .menuBasicFunctionsParameters,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      AppMenu(
        text: AppLocalizations.of(context)!.menuAdvancedDart,
        icon: Icons.integration_instructions,
        onPressed: () => Navigator.of(context).pushNamed(
          AppRoutes.snippetFilter,
          arguments: SnippetFilterModel(
            title: AppLocalizations.of(context)!.menuAdvancedDart,
            snippets: [
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuAdvancedFilterClasses,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetClass,
                    title:
                        AppLocalizations.of(context)!.menuAdvancedFilterClasses,
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
                  ),
                ),
              ),
              SnippetFilterListModel(
                text:
                    AppLocalizations.of(context)!.menuAdvancedFilterConstructor,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetClassConstructor,
                    title: AppLocalizations.of(context)!
                        .menuAdvancedFilterConstructor,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuAdvancedFilterExtends,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetClassExtends,
                    title:
                        AppLocalizations.of(context)!.menuAdvancedFilterExtends,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuAdvancedFilterAbstract,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetClassAbstract,
                    title: AppLocalizations.of(context)!
                        .menuAdvancedFilterAbstract,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text:
                    AppLocalizations.of(context)!.menuAdvancedFilterImplements,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetClassImplements,
                    title: AppLocalizations.of(context)!
                        .menuAdvancedFilterImplements,
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
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuAdvancedList,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetList,
                    title: AppLocalizations.of(context)!.menuAdvancedList,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuAdvancedMap,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetMap,
                    title: AppLocalizations.of(context)!.menuAdvancedMap,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuAdvancedOperatorSpread,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetOperatorSpread,
                    title: AppLocalizations.of(context)!
                        .menuAdvancedOperatorSpread,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuAdvancedCascadeOperator,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetCascadeOperator,
                    title: AppLocalizations.of(context)!
                        .menuAdvancedCascadeOperator,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuAdvancedPubSpec,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetPubSpec,
                    title: AppLocalizations.of(context)!.menuAdvancedPubSpec,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    };
  }
}
