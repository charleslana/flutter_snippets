import 'package:flutter/material.dart';

class SnippetMediaQuery extends StatelessWidget {
  const SnippetMediaQuery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Tamanho: ${deviceInfo.size}',
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              'Orientação: ${deviceInfo.orientation}',
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              'Hora(24 h): ${deviceInfo.alwaysUse24HourFormat}',
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              'Brilho: ${deviceInfo.platformBrightness}',
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              'Padding: ${deviceInfo.padding}',
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
