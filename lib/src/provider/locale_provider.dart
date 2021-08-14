import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/l10n/l10n.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleProvider extends ChangeNotifier {
  LocaleProvider({required dynamic languageCode}) {
    if (languageCode == null) {
      defaultLanguage = true;
      final languague = _defaultSystemLanguage == 'pt'
          ? const Locale('pt', 'BR')
          : Locale(_defaultSystemLanguage);
      final contain = L10n.all.where((locale) => locale == languague);

      if (contain.isNotEmpty) {
        locale = _defaultSystemLanguage == 'pt'
            ? const Locale('pt', 'BR')
            : Locale(_defaultSystemLanguage);
      } else {
        locale = const Locale('en');
      }
    } else {
      locale = languageCode == 'pt_BR'
          ? const Locale('pt', 'BR')
          : Locale(languageCode);
    }
  }

  Locale locale = const Locale('pt', 'BR');
  final _defaultSystemLanguage = ui.window.locale.languageCode;
  bool defaultLanguage = false;

  Future<void> setLocale(Locale flag) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();

    await preferences.setString('languageCode', flag.toString());
    locale = flag;
    notifyListeners();
  }

  Future<void> removeLocale() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.remove('languageCode');

    final languague = _defaultSystemLanguage == 'pt'
        ? const Locale('pt', 'BR')
        : Locale(_defaultSystemLanguage);
    final contain = L10n.all.where((locale) => locale == languague);

    if (contain.isNotEmpty) {
      locale = _defaultSystemLanguage == 'pt'
          ? const Locale('pt', 'BR')
          : Locale(_defaultSystemLanguage);
    } else {
      locale = const Locale('en');
    }
    notifyListeners();
  }
}
