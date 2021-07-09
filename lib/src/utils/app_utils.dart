import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppUtils {
  copyCode(String data, BuildContext context) {
    final copy = ClipboardData(text: data);
    Clipboard.setData(copy).then(
      (_) => {
        ScaffoldMessenger.of(context).hideCurrentSnackBar(),
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Código copiado'),
            action: SnackBarAction(
              label: 'Fechar',
              onPressed: () {},
            ),
          ),
        ),
      },
    );
  }
}
