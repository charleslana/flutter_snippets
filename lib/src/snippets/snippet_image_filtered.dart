import 'dart:ui';

import 'package:flutter/material.dart';

class SnippetImageFiltered extends StatelessWidget {
  const SnippetImageFiltered({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ImageFiltered(
          imageFilter: ImageFilter.blur(
            sigmaX: 4,
            sigmaY: 4,
          ),
          child: Image.network('https://i.imgur.com/hEbcdEB.png'),
        ),
      ),
    );
  }
}
