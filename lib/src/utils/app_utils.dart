import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_snippets/src/routes/app_routes.dart';

class AppUtils {
  static void navigateToScreen(
      BuildContext context, int index, String? currentRoute) {
    switch (index) {
      case 0:
        if (currentRoute != AppRoutes.snippetDart) {
          Navigator.of(context).pushNamed(AppRoutes.snippetDart);
        }
        break;
      case 1:
        if (currentRoute != AppRoutes.snippetWidgets) {
          Navigator.of(context).pushReplacementNamed(AppRoutes.snippetWidgets);
        }
        break;
      case 2:
        if (currentRoute != AppRoutes.appInfo) {
          Navigator.of(context).pushNamed(AppRoutes.appInfo);
        }
        break;
      case 3:
        if (currentRoute != AppRoutes.appSettings) {
          Navigator.of(context).pushNamed(AppRoutes.appSettings);
        }
        break;
      default:
        Navigator.of(context).pushReplacementNamed(AppRoutes.snippetWidgets);
    }
  }

  static void toast(BuildContext context, String message) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        action: SnackBarAction(
          label: AppLocalizations.of(context)!.utilToastClose,
          onPressed: () {},
        ),
      ),
    );
  }

  static void copyCode(BuildContext context, String data) {
    final copy = ClipboardData(text: data);
    Clipboard.setData(copy).then(
      (_) => toast(context, AppLocalizations.of(context)!.utilCopyCodeMessage),
    );
  }

  static String removeDiacritics(String string) {
    const withDiacritics =
        'ÀÁÂÃÄÅàáâãäåÒÓÔÕÕÖØòóôõöøÈÉÊËèéêëðÇçÐÌÍÎÏìíîïÙÚÛÜùúûüÑñŠšŸÿýŽž';
    const withoutDiacritics =
        'AAAAAAaaaaaaOOOOOOOooooooEEEEeeeeeCcDIIIIiiiiUUUUuuuuNnSsYyyZz';

    for (int i = 0; i < withDiacritics.length; i++) {
      string = string.replaceAll(withDiacritics[i], withoutDiacritics[i]);
    }
    return string;
  }

  static void alert(BuildContext context, String? message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          insetPadding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.08),
          title: const Center(
            child: Icon(
              Icons.help_outline,
              size: 40,
            ),
          ),
          content: message == null
              ? Text(AppLocalizations.of(context)!.utilAlertNoInformation)
              : SingleChildScrollView(
                  physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics(),
                  ),
                  child: Column(
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
              onPressed: () => Navigator.pop(context, true),
              child: const Text('Ok'),
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

  static DateTime toDateTime(Timestamp? timestamp) {
    if (timestamp == null) {
      return DateTime.now();
    }
    return timestamp.toDate();
  }

  static StreamTransformer<dynamic, dynamic> transformer<T>(
          T Function(Map<String, dynamic> json) fromJson) =>
      StreamTransformer<QuerySnapshot<Map<String, dynamic>>,
          List<T>>.fromHandlers(
        handleData: (QuerySnapshot<Map<String, dynamic>> data,
            EventSink<List<T>> sink) {
          final snaps = data.docs.map((doc) => doc.data()).toList();
          final objects = snaps.map((json) => fromJson(json)).toList();
          sink.add(objects);
        },
      );
}
