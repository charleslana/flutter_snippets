import 'package:flutter/material.dart';

class SnippetSafeArea extends StatelessWidget {
  const SnippetSafeArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'SafeArea a esquerda',
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                'SafeArea a direita',
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'SafeArea a esquerda',
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                'SafeArea a direita',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
