import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AppUtils {
  void copyCode(String data, BuildContext context) {
    final copy = ClipboardData(text: data);
    Clipboard.setData(copy).then(
      (_) => {
        ScaffoldMessenger.of(context).hideCurrentSnackBar(),
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.utilCopyCodeMessage),
            action: SnackBarAction(
              label: AppLocalizations.of(context)!.utilCopyCodeClose,
              onPressed: () {},
            ),
          ),
        ),
      },
    );
  }

  String removeDiacritics(String string) {
    var withDiacritics =
        'ÀÁÂÃÄÅàáâãäåÒÓÔÕÕÖØòóôõöøÈÉÊËèéêëðÇçÐÌÍÎÏìíîïÙÚÛÜùúûüÑñŠšŸÿýŽž';
    var withoutDiacritics =
        'AAAAAAaaaaaaOOOOOOOooooooEEEEeeeeeCcDIIIIiiiiUUUUuuuuNnSsYyyZz';

    for (int i = 0; i < withDiacritics.length; i++) {
      string = string.replaceAll(withDiacritics[i], withoutDiacritics[i]);
    }
    return string;
  }
}
