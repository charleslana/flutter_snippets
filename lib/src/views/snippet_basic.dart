import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/components/app_bottom_navigation_bar.dart';
import 'package:flutter_snippets/src/components/app_card.dart';
import 'package:flutter_snippets/src/constants/app_constants.dart';
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
                  AppConstants.TEXT_TITLE_BASIC,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
              AppCard(
                text: AppConstants.TEXT_CARD_BASIC_VARIABLES,
                icon: Icons.code,
                onPressed: () => Navigator.of(context)
                    .pushNamed(AppRoutes.SNIPPET_VARIABLES),
              ),
              AppCard(
                text: AppConstants.TEXT_CARD_BASIC_TYPES,
                icon: Icons.title,
                onPressed: () =>
                    Navigator.of(context).pushNamed(AppRoutes.SNIPPET_TYPES),
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
