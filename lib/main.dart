import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/routes/app_routes.dart';
import 'package:flutter_snippets/src/snippets/snippet_classes.dart';
import 'package:flutter_snippets/src/snippets/snippet_classes_private_public.dart';
import 'package:flutter_snippets/src/snippets/snippet_comments.dart';
import 'package:flutter_snippets/src/snippets/snippet_concat_strings.dart';
import 'package:flutter_snippets/src/snippets/snippet_flux_control.dart';
import 'package:flutter_snippets/src/snippets/snippet_functions_parameters.dart';
import 'package:flutter_snippets/src/snippets/snippet_math_operations.dart';
import 'package:flutter_snippets/src/snippets/snippet_null_safety.dart';
import 'package:flutter_snippets/src/snippets/snippet_types.dart';
import 'package:flutter_snippets/src/snippets/snippet_variables.dart';
import 'package:flutter_snippets/src/views/snippet_advanced.dart';
import 'package:flutter_snippets/src/views/snippet_animations.dart';
import 'package:flutter_snippets/src/views/snippet_basic.dart';
import 'package:flutter_snippets/src/views/snippet_filter.dart';
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
          AppRoutes.SNIPPET_MATH_OPERATIONS: (_) => SnippetMathOperations(),
          AppRoutes.SNIPPET_CONCAT_STRINGS: (_) => SnippetConcatStrings(),
          AppRoutes.SNIPPET_NULL_SAFETY: (_) => SnippetNullSafety(),
          AppRoutes.SNIPPET_FLUX_CONTROL: (_) => SnippetFluxControl(),
          AppRoutes.SNIPPET_FUNCTIONS_PARAMETERS: (_) =>
              SnippetFunctionsParameters(),
          AppRoutes.SNIPPET_FILTER: (_) => SnippetFilter(),
          AppRoutes.SNIPPET_CLASSES: (_) => SnippetClasses(),
          AppRoutes.SNIPPET_CLASSES_PRIVATE_PUBLIC: (_) =>
              SnippetClassesPrivatePublic(),
        },
      ),
    );
  }
}
