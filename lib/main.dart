import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_snippets/src/l10n/l10n.dart';
import 'package:flutter_snippets/src/pages/app_logo.dart';
import 'package:flutter_snippets/src/pages/app_news.dart';
import 'package:flutter_snippets/src/provider/locale_provider.dart';
import 'package:flutter_snippets/src/provider/theme_provider.dart';
import 'package:flutter_snippets/src/routes/app_routes.dart';
import 'package:flutter_snippets/src/pages/snippet_advanced.dart';
import 'package:flutter_snippets/src/pages/snippet_animations.dart';
import 'package:flutter_snippets/src/pages/snippet_basic.dart';
import 'package:flutter_snippets/src/pages/snippet_filter.dart';
import 'package:flutter_snippets/src/pages/snippet_show.dart';
import 'package:flutter_snippets/src/pages/snippet_widgets.dart';
import 'package:flutter_snippets/src/widgets/app_route_page.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) =>
              ThemeProvider(isOn: prefs!.getBool('isDarkMode')),
        ),
        ChangeNotifierProvider(
          create: (context) =>
              LocaleProvider(languageCode: prefs!.getString('languageCode')),
        ),
      ],
      child: MyAppMaterial(),
    );
  }
}

class MyAppMaterial extends StatelessWidget {
  const MyAppMaterial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final localeProvider = Provider.of<LocaleProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Snippets',
      themeMode: themeProvider.themeMode,
      theme: MyThemes.lighTheme,
      darkTheme: MyThemes.darkTheme,
      locale: localeProvider.locale,
      supportedLocales: L10n.all,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      initialRoute: AppRoutes.appLogo,
      onGenerateRoute: (settings) {
        if (settings.name == AppRoutes.appLogo) {
          return AppRoutePage(widget: AppLogo(), routeName: AppRoutes.appLogo);
        }
        if (settings.name == AppRoutes.snippetBasic) {
          return AppRoutePage(
              widget: SnippetBasic(), routeName: AppRoutes.snippetBasic);
        }
        if (settings.name == AppRoutes.snippetAdvanced) {
          return AppRoutePage(
              widget: SnippetAdvanced(), routeName: AppRoutes.snippetAdvanced);
        }
        if (settings.name == AppRoutes.snippetWidgets) {
          return AppRoutePage(
              widget: SnippetWidgets(), routeName: AppRoutes.snippetWidgets);
        }
        if (settings.name == AppRoutes.snippetAnimations) {
          return AppRoutePage(
              widget: SnippetAnimations(),
              routeName: AppRoutes.snippetAnimations);
        }
        if (settings.name == AppRoutes.snippetShow) {
          return AppRoutePage(
            widget: SnippetShow(),
            routeName: AppRoutes.snippetShow,
            arguments: settings.arguments,
          );
        }
        if (settings.name == AppRoutes.snippetFilter) {
          return AppRoutePage(
            widget: SnippetFilter(),
            routeName: AppRoutes.snippetFilter,
            arguments: settings.arguments,
          );
        }
        if (settings.name == AppRoutes.appNews) {
          return AppRoutePage(
            widget: AppNews(),
            routeName: AppRoutes.appNews,
          );
        }
        return AppRoutePage(
          widget: SnippetBasic(),
          routeName: AppRoutes.snippetBasic,
        );
      },
    );
  }
}
