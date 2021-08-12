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
import 'package:flutter_snippets/src/widgets/app_route_page.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  await Firebase.initializeApp();
  runApp(MyApp(preferences: preferences));
}

class MyApp extends StatelessWidget {
  final SharedPreferences? preferences;
  const MyApp({
    Key? key,
    this.preferences,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) =>
              ThemeProvider(isOn: preferences!.getBool('isDarkMode')),
        ),
        ChangeNotifierProvider(
          create: (context) => LocaleProvider(
              languageCode: preferences!.getString('languageCode')),
        ),
        ChangeNotifierProvider(create: (context) => NewsProvider()),
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

        if (settings.name == AppRoutes.snippetWidgets) {
          return AppRoutePage(
              widget: SnippetWidgets(), routeName: AppRoutes.snippetWidgets);
        }

        if (settings.name == AppRoutes.snippetDart) {
          return AppRoutePage(
              widget: SnippetDart(), routeName: AppRoutes.snippetDart);
        }

        if (settings.name == AppRoutes.appSettings) {
          return AppRoutePage(
              widget: AppSettings(), routeName: AppRoutes.appSettings);
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

        if (settings.name == AppRoutes.appInfo) {
          return AppRoutePage(widget: AppInfo(), routeName: AppRoutes.appInfo);
        }

        return AppRoutePage(
            widget: SnippetWidgets(), routeName: AppRoutes.snippetWidgets);
      },
    );
  }
}
