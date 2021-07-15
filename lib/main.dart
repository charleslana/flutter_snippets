import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/provider/theme_provider.dart';
import 'package:flutter_snippets/src/routes/app_routes.dart';
import 'package:flutter_snippets/src/pages/snippet_advanced.dart';
import 'package:flutter_snippets/src/pages/snippet_animations.dart';
import 'package:flutter_snippets/src/pages/snippet_basic.dart';
import 'package:flutter_snippets/src/pages/snippet_filter.dart';
import 'package:flutter_snippets/src/pages/snippet_show.dart';
import 'package:flutter_snippets/src/pages/snippet_widgets.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(MyApp(prefs: prefs));
}

class MyApp extends StatelessWidget {
  final SharedPreferences? prefs;
  const MyApp({
    Key? key,
    this.prefs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(isOn: prefs!.getBool('isDarkMode')),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Snippets',
            themeMode: themeProvider.themeMode,
            theme: MyThemes.lighTheme,
            darkTheme: MyThemes.darkTheme,
            initialRoute: AppRoutes.SNIPPET_BASIC,
            routes: {
              AppRoutes.SNIPPET_BASIC: (_) => SnippetBasic(),
              AppRoutes.SNIPPET_ADVANCED: (_) => SnippetAdvanced(),
              AppRoutes.SNIPPET_WIDGETS: (_) => SnippetWidgets(),
              AppRoutes.SNIPPET_ANIMATIONS: (_) => SnippetAnimations(),
              AppRoutes.SNIPPET_SHOW: (_) => SnippetShow(),
              AppRoutes.SNIPPET_FILTER: (_) => SnippetFilter(),
            },
          );
        },
      );
}
