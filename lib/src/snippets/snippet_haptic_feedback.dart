import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SnippetHapticFeedback extends StatelessWidget {
  const SnippetHapticFeedback({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Wrap(
          runSpacing: 5,
          spacing: 5,
          children: const [
            ElevatedButton(
              onPressed: HapticFeedback.vibrate,
              child: Text('Vibrate'),
            ),
            ElevatedButton(
              onPressed: HapticFeedback.lightImpact,
              child: Text('Light Impact'),
            ),
            ElevatedButton(
              onPressed: HapticFeedback.mediumImpact,
              child: Text('Medium Impact'),
            ),
            ElevatedButton(
              onPressed: HapticFeedback.heavyImpact,
              child: Text('Heavy Impact'),
            ),
            ElevatedButton(
              onPressed: HapticFeedback.selectionClick,
              child: Text('Selection Click'),
            ),
          ],
        ),
      ),
    );
  }
}
