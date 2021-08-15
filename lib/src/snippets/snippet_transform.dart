import 'dart:math' as math;

import 'package:flutter/material.dart';

class SnippetTransform extends StatelessWidget {
  const SnippetTransform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.black,
                child: Transform(
                  alignment: Alignment.topRight,
                  transform: Matrix4.skewY(0.3)..rotateZ(-math.pi / 12.0),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    color: const Color(0xffe8581c),
                    child: const Text('My text'),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Transform.rotate(
                angle: math.pi / 4,
                child: const Icon(
                  Icons.menu,
                  size: 40,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Transform.scale(
                scale: 1.5,
                child: const Icon(
                  Icons.menu,
                  size: 40,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Transform.translate(
                offset: const Offset(50, 50),
                child: const Icon(
                  Icons.menu,
                  size: 40,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Transform(
                transform: Matrix4.skewX(0.3),
                child: const Icon(
                  Icons.menu,
                  size: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
