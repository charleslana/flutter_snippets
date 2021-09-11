import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class SnippetBackdropFilter extends StatelessWidget {
  const SnippetBackdropFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            'https://i.imgur.com/d2T6Ujm.jpg',
          ),
          Positioned(
            top: 100,
            left: 50,
            width: 200,
            height: 250,
            child: ClipRect(
              child: BackdropFilter(
                filter: ui.ImageFilter.blur(
                  sigmaX: 5,
                  sigmaY: 5,
                ),
                child: Container(color: Colors.black.withOpacity(0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
