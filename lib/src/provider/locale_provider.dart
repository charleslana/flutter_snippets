import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/l10n/l10n.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleProvider extends ChangeNotifier {
  Locale _locale = Locale('pt', 'BR');
  final _defaultLanguage = ui.window.locale.languageCode;
  bool _defaultSystemLanguage = false;

  Locale get locale => _locale;

  void set locale(Locale value) => _locale = value;

  bool get defaultSystemLanguage => _defaultSystemLanguage;

  void set defaultSystemLanguage(bool value) => _defaultSystemLanguage = value;

  LocaleProvider({required dynamic languageCode}) {
    if (languageCode == null) {
      _defaultSystemLanguage = true;

      if (!L10n.all.contains(_defaultLanguage)) {
        _locale = _defaultLanguage == 'pt'
            ? Locale('pt', 'BR')
            : Locale(_defaultLanguage);
      } else {
        _locale = Locale('en');
      }
    } else {
      _locale =
          languageCode == 'pt_BR' ? Locale('pt', 'BR') : Locale(languageCode);
    }
  }

  void setLocale(Locale locale) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    if (!L10n.all.contains(locale)) {
      return;
    }

    preferences.setString('languageCode', locale.toString());
    _locale = locale;
    notifyListeners();
  }

  Future<void> removeLocale() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.remove('languageCode');
    if (!L10n.all.contains(_defaultLanguage)) {
      _locale = _defaultLanguage == 'pt'
          ? Locale('pt', 'BR')
          : Locale(_defaultLanguage);
    } else {
      _locale = Locale('en');
    }
    notifyListeners();
  }
}
