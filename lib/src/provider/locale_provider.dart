import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/l10n/l10n.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleProvider extends ChangeNotifier {
  Locale _locale = Locale('pt', 'BR');

  Locale get locale => _locale;

  LocaleProvider({required dynamic languageCode}) {
    _locale = languageCode == null
        ? Locale('pt', 'BR')
        : languageCode == 'pt_BR'
            ? Locale('pt', 'BR')
            : Locale(languageCode);
  }

  void setLocale(Locale locale) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (!L10n.all.contains(locale)) {
      return;
    }

    prefs.setString('languageCode', locale.toString());
    _locale = locale;
    notifyListeners();
  }

  void clearLocale() {
    _locale = Locale('en');
    notifyListeners();
  }
}
