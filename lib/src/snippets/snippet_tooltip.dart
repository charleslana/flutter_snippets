import 'package:flutter/material.dart';

class SnippetTooltip extends StatelessWidget {
  SnippetTooltip({Key? key}) : super(key: key);

  final GlobalKey _toolTipKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            final dynamic tooltip = _toolTipKey.currentState;
            tooltip.ensureTooltipVisible();
          },
          child: Tooltip(
            key: _toolTipKey,
            message: 'button is disabled',
            child: Radio(
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
