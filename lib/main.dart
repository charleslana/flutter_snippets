import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_snippets/src/l10n/l10n.dart';
import 'package:flutter_snippets/src/pages/app_logo.dart';
import 'package:flutter_snippets/src/pages/app_info.dart';
import 'package:flutter_snippets/src/pages/app_settings.dart';
import 'package:flutter_snippets/src/pages/snippet_dart.dart';
import 'package:flutter_snippets/src/pages/snippet_widgets.dart';
import 'package:flutter_snippets/src/provider/locale_provider.dart';
import 'package:flutter_snippets/src/provider/news_provider.dart';
import 'package:flutter_snippets/src/provider/theme_provider.dart';
import 'package:flutter_snippets/src/routes/app_routes.dart';
import 'package:flutter_snippets/src/pages/snippet_filter.dart';
import 'package:flutter_snippets/src/pages/snippet_show.dart';
import 'package:flutter_snippets/src/widgets/app_route_transition.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  await Firebase.initializeApp();
  runApp(MyApp(sharedPreferences: sharedPreferences));
}

class MyApp extends StatelessWidget {
  const MyApp({
    this.sharedPreferences,
    Key? key,
  }) : super(key: key);

  final SharedPreferences? sharedPreferences;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider(sharedPreferences)),
        ChangeNotifierProvider(
            create: (_) => LocaleProvider(sharedPreferences)),
        ChangeNotifierProvider(create: (_) => NewsProvider()),
      ],
      child: const MyAppMaterial(),
    );
  }
}

class MyAppMaterial extends StatelessWidget {
  const MyAppMaterial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    final LocaleProvider localeProvider = Provider.of<LocaleProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Snippets',
      themeMode: themeProvider.themeMode,
      theme: lighTheme,
      darkTheme: darkTheme,
      locale: localeProvider.locale,
      supportedLocales: L10n.supportedLocales,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      initialRoute: AppRoutes.appLogo,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case AppRoutes.appLogo:
            return AppRouteTransition(
              widget: const AppLogo(),
              settings: settings,
            );
          case AppRoutes.snippetWidgets:
            return AppRouteTransition(
              widget: const SnippetWidgets(),
              settings: settings,
            );
          case AppRoutes.snippetDart:
            return AppRouteTransition(
              widget: const SnippetDart(),
              settings: settings,
            );
          case AppRoutes.appSettings:
            return AppRouteTransition(
              widget: const AppSettings(),
              settings: settings,
            );
          case AppRoutes.snippetShow:
            return AppRouteTransition(
              widget: const SnippetShow(),
              settings: settings,
            );
          case AppRoutes.snippetFilter:
            return AppRouteTransition(
              widget: const SnippetFilter(),
              settings: settings,
            );
          case AppRoutes.appInfo:
            return AppRouteTransition(
              widget: const AppInfo(),
              settings: settings,
            );
          default:
            return AppRouteTransition(
              widget: const SnippetWidgets(),
              settings: settings,
            );
        }
      },
    );
  }
}
