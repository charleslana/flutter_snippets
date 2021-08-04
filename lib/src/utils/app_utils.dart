import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_snippets/src/routes/app_routes.dart';

class AppUtils {
  void navigateToScreen(int index, BuildContext context, currentRoute) {
    switch (index) {
      case 0:
        currentRoute != AppRoutes.snippetDart
            ? Navigator.of(context).pushNamed(AppRoutes.snippetDart)
            : null;
        break;
      case 1:
        currentRoute != AppRoutes.snippetWidgets
            ? Navigator.of(context)
                .pushReplacementNamed(AppRoutes.snippetWidgets)
            : null;
        break;
      case 2:
        currentRoute != AppRoutes.appInfo
            ? Navigator.of(context).pushNamed(AppRoutes.appInfo)
            : null;
        break;
      default:
        Navigator.of(context).pushReplacementNamed(AppRoutes.snippetDart);
    }
  }

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

  void alert(String? message, BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          insetPadding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.08),
          title: Center(
            child: Icon(
              Icons.lightbulb,
              size: 40,
            ),
          ),
          content: message == null
              ? Text(AppLocalizations.of(context)!.utilAlertNoInformation)
              : SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 16,
                        width: MediaQuery.of(context).size.width,
                      ),
                      Text(message),
                    ],
                  ),
                ),
          actions: [
            TextButton(
              child: Text('Ok'),
              onPressed: () => Navigator.pop(context, true),
            ),
          ],
        );
      },
    ).then((value) {
      if (value == null) {
        return;
      }
      if (value) {
      } else {}
    });
  }
}
