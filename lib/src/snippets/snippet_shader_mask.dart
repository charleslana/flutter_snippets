import 'package:flutter/material.dart';

class SnippetShaderMask extends StatelessWidget {
  const SnippetShaderMask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ShaderMask(
          blendMode: BlendMode.srcATop,
          shaderCallback: (Rect bounds) {
            return RadialGradient(
              center: Alignment.topLeft,
              radius: 1,
              colors: [
                Colors.yellow,
                Colors.deepOrange.shade900,
              ],
              tileMode: TileMode.mirror,
            ).createShader(bounds);
          },
          child: const Text('ShaderMask'),
        ),
      ),
    );
  }
}
