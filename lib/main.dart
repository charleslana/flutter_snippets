import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/routes/app_routes.dart';
import 'package:flutter_snippets/src/snippets/snippet_comments.dart';
import 'package:flutter_snippets/src/snippets/snippet_types.dart';
import 'package:flutter_snippets/src/snippets/snippet_variables.dart';
import 'package:flutter_snippets/src/views/snippet_advanced.dart';
import 'package:flutter_snippets/src/views/snippet_animations.dart';
import 'package:flutter_snippets/src/views/snippet_basic.dart';
import 'package:flutter_snippets/src/views/snippet_widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Snippets',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: AppRoutes.SNIPPET_BASIC,
        routes: {
          AppRoutes.SNIPPET_BASIC: (_) => SnippetBasic(),
          AppRoutes.SNIPPET_ADVANCED: (_) => SnippetAdvanced(),
          AppRoutes.SNIPPET_WIDGETS: (_) => SnippetWidgets(),
          AppRoutes.SNIPPET_ANIMATIONS: (_) => SnippetAnimations(),
          AppRoutes.SNIPPET_COMMENTS: (_) => SnippetComments(),
          AppRoutes.SNIPPET_VARIABLES: (_) => SnippetVariables(),
          AppRoutes.SNIPPET_TYPES: (_) => SnippetTypes(),
        },
      ),
    );
  }
}
