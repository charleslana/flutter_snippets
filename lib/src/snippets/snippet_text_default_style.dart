import 'package:flutter/material.dart';

class SnippetTextDefaultStyle extends StatelessWidget {
  const SnippetTextDefaultStyle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Texto com estilo padrão',
          style: DefaultTextStyle.of(context).style,
        ),
      ),
    );
  }
}
