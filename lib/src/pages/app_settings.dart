import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/l10n/l10n.dart';
import 'package:flutter_snippets/src/provider/locale_provider.dart';
import 'package:flutter_snippets/src/provider/theme_provider.dart';
import 'package:flutter_snippets/src/widgets/app_custom_bar.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AppSettings extends StatefulWidget {
  const AppSettings({Key? key}) : super(key: key);

  @override
  _AppSettingsState createState() => _AppSettingsState();
}

class _AppSettingsState extends State<AppSettings> {
  late bool _isDefaultTheme;
  late bool _isDarkMode;
  late bool _isDefaultLanguage;
  late int _language;

  void _selectDefaultTheme() {
    final ThemeProvider themeProvider =
        Provider.of<ThemeProvider>(context, listen: false)..remove();

    themeProvider.brightness == Brightness.dark
        ? _isDarkMode = true
        : _isDarkMode = false;

    setState(() {
      _isDefaultTheme = true;
    });
  }

  void _toggleDarkMode(bool value) {
    Provider.of<ThemeProvider>(context, listen: false).toggle(isOn: value);

    setState(() {
      _isDefaultTheme = false;
      _isDarkMode = value;
    });
  }

  void _selectDefaultLanguage() {
    final LocaleProvider localeProvider = Provider.of(context, listen: false)
      ..remove();

    setState(() {
      _isDefaultLanguage = true;
      _language = L10n.getLanguage(localeProvider.languageCode);
    });
  }

  void _changeLanguage(Object? value, Locale locale) {
    Provider.of<LocaleProvider>(context, listen: false).set(locale);

    setState(() {
      _isDefaultLanguage = false;
      _language = int.parse(value.toString());
    });
  }

  @override
  void initState() {
    final ThemeProvider themeProvider =
        Provider.of<ThemeProvider>(context, listen: false);
    final LocaleProvider localeProvider =
        Provider.of<LocaleProvider>(context, listen: false);

    setState(() {
      _isDefaultTheme = themeProvider.isDefaultTheme;
      _isDarkMode = themeProvider.isDarkMode;
      _isDefaultLanguage = localeProvider.isDefaultLanguage;
      _language = L10n.getLanguage(localeProvider.locale.languageCode);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppCustomBar(title: AppLocalizations.of(context)!.appSettings),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                AppLocalizations.of(context)!.appSettingsTheme,
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(
                height: 30,
              ),
              CheckboxListTile(
                title: Text(AppLocalizations.of(context)!
                    .appSettingsDefaultThemeSystem),
                value: _isDefaultTheme,
                onChanged: (_) => _selectDefaultTheme(),
              ),
              SwitchListTile(
                title: Text(AppLocalizations.of(context)!.appSettingsDarkMode),
                value: _isDarkMode,
                onChanged: _toggleDarkMode,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                AppLocalizations.of(context)!.appSettingsLanguage,
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(
                height: 30,
              ),
              CheckboxListTile(
                title: Text(AppLocalizations.of(context)!
                    .appSettingsDefaultLanguageSystem),
                value: _isDefaultLanguage,
                onChanged: (_) => _selectDefaultLanguage(),
              ),
              RadioListTile(
                value: 1,
                groupValue: _language,
                onChanged: (value) =>
                    _changeLanguage(value, L10n.supportedLocales[0]),
                title: Text(AppLocalizations.of(context)!
                    .appSettingsLanguageEnglish),
                controlAffinity: ListTileControlAffinity.trailing,
              ),
              RadioListTile(
                value: 2,
                groupValue: _language,
                onChanged: (value) =>
                    _changeLanguage(value, L10n.supportedLocales[1]),
                title: Text(
                    AppLocalizations.of(context)!.appSettingsLanguageSpanish),
                controlAffinity: ListTileControlAffinity.trailing,
              ),
              RadioListTile(
                value: 3,
                groupValue: _language,
                onChanged: (value) =>
                    _changeLanguage(value, L10n.supportedLocales[2]),
                title: Text(
                    AppLocalizations.of(context)!.appSettingsLanguagePortuguese),
                controlAffinity: ListTileControlAffinity.trailing,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
