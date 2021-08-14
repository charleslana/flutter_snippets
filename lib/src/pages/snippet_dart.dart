import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_snippets/src/constants/app_constants.dart';
import 'package:flutter_snippets/src/models/snippet_filter_list_model.dart';
import 'package:flutter_snippets/src/models/snippet_filter_model.dart';
import 'package:flutter_snippets/src/models/snippet_show_model.dart';
import 'package:flutter_snippets/src/routes/app_routes.dart';
import 'package:flutter_snippets/src/widgets/app_custom_bar.dart';
import 'package:flutter_snippets/src/widgets/app_menu.dart';

class SnippetDart extends StatelessWidget {
  const SnippetDart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const AppCustomBar(title: 'Dart'),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Stack(
            children: [
              ListView(
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      AppLocalizations.of(context)!.menuBasicDart,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
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
                        title: AppLocalizations.of(context)!
                            .menuBasicNomenclatures,
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
                        title: AppLocalizations.of(context)!
                            .menuBasicMathOperations,
                      ),
                    ),
                  ),
                  AppMenu(
                    text: AppLocalizations.of(context)!
                        .menuBasicConcatenationStrings,
                    icon: Icons.text_snippet,
                    onPressed: () => Navigator.of(context).pushNamed(
                      AppRoutes.snippetShow,
                      arguments: SnippetShowModel(
                        data: AppConstants.txtSnippetConcatenationStrings,
                        title: AppLocalizations.of(context)!
                            .menuBasicConcatenationStrings,
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
                        title:
                            AppLocalizations.of(context)!.menuBasicNullSafety,
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
                        title:
                            AppLocalizations.of(context)!.menuBasicFluxControl,
                      ),
                    ),
                  ),
                  AppMenu(
                    text: AppLocalizations.of(context)!
                        .menuBasicFunctionsParameters,
                    icon: Icons.functions,
                    onPressed: () => Navigator.of(context).pushNamed(
                      AppRoutes.snippetShow,
                      arguments: SnippetShowModel(
                        data: AppConstants.txtSnippetFunctionsParameters,
                        title: AppLocalizations.of(context)!
                            .menuBasicFunctionsParameters,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      AppLocalizations.of(context)!.menuAdvancedDart,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
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
                        title:
                            AppLocalizations.of(context)!.menuAdvancedClasses,
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
                            text: AppLocalizations.of(context)!
                                .menuAdvancedFilterConstructor,
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
                            text: AppLocalizations.of(context)!
                                .menuAdvancedFilterExtends,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetClassExtends,
                                title: AppLocalizations.of(context)!
                                    .menuAdvancedFilterExtends,
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
                        ],
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
                      ),
                    ),
                  ),
                  AppMenu(
                    text: AppLocalizations.of(context)!
                        .menuAdvancedOperatorSpread,
                    icon: Icons.add_road,
                    onPressed: () => Navigator.of(context).pushNamed(
                      AppRoutes.snippetShow,
                      arguments: SnippetShowModel(
                        data: AppConstants.txtSnippetOperatorSpread,
                        title: AppLocalizations.of(context)!
                            .menuAdvancedOperatorSpread,
                      ),
                    ),
                  ),
                  AppMenu(
                    text: AppLocalizations.of(context)!
                        .menuAdvancedCascadeOperator,
                    icon: Icons.clear_all,
                    onPressed: () => Navigator.of(context).pushNamed(
                      AppRoutes.snippetShow,
                      arguments: SnippetShowModel(
                        data: AppConstants.txtSnippetCascadeOperator,
                        title: AppLocalizations.of(context)!
                            .menuAdvancedCascadeOperator,
                      ),
                    ),
                  ),
                  AppMenu(
                    text: AppLocalizations.of(context)!.menuAdvancedPubSpec,
                    icon: Icons.public,
                    onPressed: () => Navigator.of(context).pushNamed(
                      AppRoutes.snippetShow,
                      arguments: SnippetShowModel(
                        data: AppConstants.txtSnippetPubSpec,
                        title:
                            AppLocalizations.of(context)!.menuAdvancedPubSpec,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
