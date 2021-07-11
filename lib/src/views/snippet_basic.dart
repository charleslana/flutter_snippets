import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/components/app_bottom_navigation_bar.dart';
import 'package:flutter_snippets/src/components/app_card.dart';
import 'package:flutter_snippets/src/constants/app_constants.dart';
import 'package:flutter_snippets/src/models/snippet_show_model.dart';
import 'package:flutter_snippets/src/routes/app_routes.dart';

class SnippetBasic extends StatelessWidget {
  const SnippetBasic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppConstants.TEXT_TITLE_BASIC),
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  AppConstants.TEXT_CARD_BASIC_DART,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
              AppCard(
                text: AppConstants.TEXT_CARD_BASIC_COMMENTS,
                icon: Icons.textsms,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.SNIPPET_SHOW,
                  arguments: SnippetShowModel(
                    data: AppConstants.TXT_SNIPPET_COMMENTS,
                    title: AppConstants.TEXT_CARD_BASIC_COMMENTS,
                    bottomNavigationBarIndex: 0,
                  ),
                ),
              ),
              AppCard(
                text: AppConstants.TEXT_CARD_BASIC_VARIABLES,
                icon: Icons.memory,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.SNIPPET_SHOW,
                  arguments: SnippetShowModel(
                    data: AppConstants.TXT_SNIPPET_VARIABLES,
                    title: AppConstants.TEXT_CARD_BASIC_VARIABLES,
                    bottomNavigationBarIndex: 0,
                  ),
                ),
              ),
              AppCard(
                text: AppConstants.TEXT_CARD_BASIC_NOMENCLATURES,
                icon: Icons.create,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.SNIPPET_SHOW,
                  arguments: SnippetShowModel(
                    data: AppConstants.TXT_SNIPPET_NOMENCLATURES,
                    title: AppConstants.TEXT_CARD_BASIC_NOMENCLATURES,
                    bottomNavigationBarIndex: 0,
                  ),
                ),
              ),
              AppCard(
                text: AppConstants.TEXT_CARD_BASIC_TYPES,
                icon: Icons.title,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.SNIPPET_SHOW,
                  arguments: SnippetShowModel(
                    data: AppConstants.TXT_SNIPPET_TYPES,
                    title: AppConstants.TEXT_CARD_BASIC_TYPES,
                    bottomNavigationBarIndex: 0,
                  ),
                ),
              ),
              AppCard(
                text: AppConstants.TEXT_CARD_BASIC_MATH_OPERATIONS,
                icon: Icons.calculate,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.SNIPPET_SHOW,
                  arguments: SnippetShowModel(
                    data: AppConstants.TXT_SNIPPET_MATH_OPERATIONS,
                    title: AppConstants.TEXT_CARD_BASIC_MATH_OPERATIONS,
                    bottomNavigationBarIndex: 0,
                  ),
                ),
              ),
              AppCard(
                text: AppConstants.TEXT_CARD_BASIC_CONCAT_STRINGS,
                icon: Icons.text_snippet,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.SNIPPET_SHOW,
                  arguments: SnippetShowModel(
                    data: AppConstants.TXT_SNIPPET_CONCAT_STRINGS,
                    title: AppConstants.TEXT_CARD_BASIC_CONCAT_STRINGS,
                    bottomNavigationBarIndex: 0,
                  ),
                ),
              ),
              AppCard(
                text: AppConstants.TEXT_CARD_BASIC_NULL_SAFETY,
                icon: Icons.vpn_key,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.SNIPPET_SHOW,
                  arguments: SnippetShowModel(
                    data: AppConstants.TXT_SNIPPET_NULL_SAFETY,
                    title: AppConstants.TEXT_CARD_BASIC_NULL_SAFETY,
                    bottomNavigationBarIndex: 0,
                  ),
                ),
              ),
              AppCard(
                text: AppConstants.TEXT_CARD_BASIC_FLUX_CONTROL,
                icon: Icons.repeat,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.SNIPPET_SHOW,
                  arguments: SnippetShowModel(
                    data: AppConstants.TXT_SNIPPET_FLUX_CONTROL,
                    title: AppConstants.TEXT_CARD_BASIC_FLUX_CONTROL,
                    bottomNavigationBarIndex: 0,
                  ),
                ),
              ),
              AppCard(
                text: AppConstants.TEXT_CARD_BASIC_FUNCTIONS_PARAMETERS,
                icon: Icons.functions,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.SNIPPET_SHOW,
                  arguments: SnippetShowModel(
                    data: AppConstants.TXT_SNIPPET_FUNCTIONS_PARAMETERS,
                    title: AppConstants.TEXT_CARD_BASIC_FUNCTIONS_PARAMETERS,
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
