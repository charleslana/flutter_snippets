import 'package:flutter/material.dart';

class L10n {
  static final all = [
    const Locale('pt', 'BR'),
    const Locale('en'),
    const Locale('es'),
  ];

  static int getFlag(String code) {
    switch (code) {
      case 'pt':
        return 1;
      case 'en':
        return 2;
      case 'es':
        return 3;
      default:
        return 0;
    }
  }
}
