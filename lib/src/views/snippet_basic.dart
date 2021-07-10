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
                onPressed: () =>
                    Navigator.of(context).pushNamed(AppRoutes.SNIPPET_COMMENTS),
              ),
              AppCard(
                text: AppConstants.TEXT_CARD_BASIC_VARIABLES,
                icon: Icons.memory,
                onPressed: () => Navigator.of(context)
                    .pushNamed(AppRoutes.SNIPPET_VARIABLES),
              ),
              AppCard(
                text: AppConstants.TEXT_CARD_BASIC_TYPES,
                icon: Icons.title,
                onPressed: () =>
                    Navigator.of(context).pushNamed(AppRoutes.SNIPPET_TYPES),
              ),
              AppCard(
                text: AppConstants.TEXT_CARD_BASIC_MATH_OPERATIONS,
                icon: Icons.calculate,
                onPressed: () => Navigator.of(context)
                    .pushNamed(AppRoutes.SNIPPET_MATH_OPERATIONS),
              ),
              AppCard(
                text: AppConstants.TEXT_CARD_BASIC_CONCAT_STRINGS,
                icon: Icons.text_snippet,
                onPressed: () => Navigator.of(context)
                    .pushNamed(AppRoutes.SNIPPET_CONCAT_STRINGS),
              ),
              AppCard(
                text: AppConstants.TEXT_CARD_BASIC_NULL_SAFETY,
                icon: Icons.vpn_key,
                onPressed: () => Navigator.of(context)
                    .pushNamed(AppRoutes.SNIPPET_NULL_SAFETY),
              ),
              AppCard(
                text: AppConstants.TEXT_CARD_BASIC_FLUX_CONTROL,
                icon: Icons.repeat,
                onPressed: () => Navigator.of(context)
                    .pushNamed(AppRoutes.SNIPPET_FLUX_CONTROL),
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
