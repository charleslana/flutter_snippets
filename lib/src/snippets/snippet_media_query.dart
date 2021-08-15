import 'package:flutter/material.dart';

class SnippetMediaQuery extends StatelessWidget {
  const SnippetMediaQuery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData deviceInfo = MediaQuery.of(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Size: ${deviceInfo.size}',
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              'Orientation: ${deviceInfo.orientation}',
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              'Time(24 h): ${deviceInfo.alwaysUse24HourFormat}',
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              'Brightness: ${deviceInfo.platformBrightness}',
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              'Padding: ${deviceInfo.padding}',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
