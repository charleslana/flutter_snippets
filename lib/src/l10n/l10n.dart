import 'package:flutter/material.dart';

class L10n {
  static final all = [
    const Locale('pt', 'BR'),
    const Locale('en'),
    const Locale('es'),
  ];

  static String getFlag(String code) {
    switch (code) {
      case 'en':
        return '🇺🇸';
      case 'es':
        return '🇪🇸';
      case 'pt':
      default:
        return '🇧🇷';
    }
  }
}
