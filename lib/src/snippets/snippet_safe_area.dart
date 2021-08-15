import 'package:flutter/material.dart';

class SnippetSafeArea extends StatelessWidget {
  const SnippetSafeArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: const [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'SafeArea',
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                'SafeArea',
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'SafeArea',
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                'SafeArea',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
