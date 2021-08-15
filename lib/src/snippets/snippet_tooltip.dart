import 'package:flutter/material.dart';

class SnippetTooltip extends StatelessWidget {
  const SnippetTooltip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey key = GlobalKey();

    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            final dynamic tooltip = key.currentState;
            tooltip.ensureTooltipVisible();
          },
          child: Tooltip(
            key: key,
            message: 'Button is disabled',
            child: const Radio(
              groupValue: null,
              onChanged: null,
              value: null,
            ),
          ),
        ),
      ),
    );
  }
}
