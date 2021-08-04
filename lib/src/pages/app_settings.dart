import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/components/app_custom_bar.dart';
import 'package:flutter_snippets/src/l10n/l10n.dart';
import 'package:flutter_snippets/src/provider/locale_provider.dart';
import 'package:flutter_snippets/src/provider/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AppSettings extends StatefulWidget {
  const AppSettings({Key? key}) : super(key: key);

  @override
  _AppSettingsState createState() => _AppSettingsState();
}

class _AppSettingsState extends State<AppSettings> {
  bool _isDefaultTheme = true;
  bool _isDarkTheme = false;
  int? _language;
  bool _isDefaultLanguage = true;

  void _selectDefaultTheme() {
    setState(() {
      _isDefaultTheme = true;
      _isDarkTheme = false;
    });
  }

  void _changeDarkTheme(bool? value) {
    setState(() {
      _isDefaultTheme = false;
      _isDarkTheme = value!;
    });
    final provider = Provider.of<ThemeProvider>(context, listen: false);
    provider.toggleTheme(value!);
  }

  void _selectDefaultLanguage() {
    setState(() {
      _isDefaultLanguage = true;
      _language = 0;
    });
  }

  void _changeLanguage(int? value, Locale locale) {
    setState(() {
      _isDefaultLanguage = false;
      _language = value;
    });
    final provider = Provider.of<LocaleProvider>(context, listen: false);
    provider.setLocale(locale);
  }

  @override
  void didChangeDependencies() {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final localeProvider = Provider.of<LocaleProvider>(context);
    final flag = L10n.getFlag(localeProvider.locale.languageCode);

    setState(() {
      _isDarkTheme = themeProvider.isDarkMode;
      _isDefaultTheme = !themeProvider.isDarkMode;
      _language = flag;
      if (flag > 0) {
        _isDefaultLanguage = false;
      }
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppCustomBar(title: AppLocalizations.of(context)!.appSettings),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CheckboxListTile(
                title: Text(AppLocalizations.of(context)!
                    .appSettingsDefaultThemeSystem),
                value: _isDefaultTheme,
                onChanged: (_) => _selectDefaultTheme(),
              ),
              SwitchListTile(
                title: Text(AppLocalizations.of(context)!.appSettingsDarkMode),
                value: _isDarkTheme,
                onChanged: (bool? value) => _changeDarkTheme(value),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                AppLocalizations.of(context)!.appSettingsChooseLanguage,
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(
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
                onChanged: (int? value) => _changeLanguage(value, L10n.all[0]),
                title: Text(AppLocalizations.of(context)!
                    .appSettingsLanguagePortuguese),
                controlAffinity: ListTileControlAffinity.trailing,
              ),
              RadioListTile(
                value: 2,
                groupValue: _language,
                onChanged: (int? value) => _changeLanguage(value, L10n.all[1]),
                title: Text(
                    AppLocalizations.of(context)!.appSettingsLanguageEnglish),
                controlAffinity: ListTileControlAffinity.trailing,
              ),
              RadioListTile(
                value: 3,
                groupValue: _language,
                onChanged: (int? value) => _changeLanguage(value, L10n.all[2]),
                title: Text(
                    AppLocalizations.of(context)!.appSettingsLanguageSpanish),
                controlAffinity: ListTileControlAffinity.trailing,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
