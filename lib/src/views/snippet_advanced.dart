import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/components/app_bottom_navigation_bar.dart';
import 'package:flutter_snippets/src/components/app_card.dart';
import 'package:flutter_snippets/src/constants/app_constants.dart';
import 'package:flutter_snippets/src/models/snippet_filter_list_model.dart';
import 'package:flutter_snippets/src/models/snippet_filter_model.dart';
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
                  AppConstants.TEXT_CARD_ADVANCED_DART,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
              AppCard(
                text: AppConstants.TEXT_CARD_ADVANCED_CLASSES,
                icon: Icons.class_,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.SNIPPET_FILTER,
                  arguments: SnippetFilterModel(
                    title: AppConstants.TEXT_CARD_ADVANCED_CLASSES,
                    snippets: [
                      SnippetFilterListModel(
                        text: AppConstants
                            .TEXT_CARD_ADVANCED_CLASSES_FILTER_CLASSES,
                        onPressed: () => Navigator.of(context)
                            .pushNamed(AppRoutes.SNIPPET_CLASSES),
                      ),
                      SnippetFilterListModel(
                        text: AppConstants
                            .TEXT_CARD_ADVANCED_CLASSES_FILTER_PRIVATE_PUBLIC,
                        onPressed: () => Navigator.of(context).pushNamed(
                            AppRoutes.SNIPPET_CLASSES_PRIVATE_PUBLIC),
                      ),
                    ],
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
