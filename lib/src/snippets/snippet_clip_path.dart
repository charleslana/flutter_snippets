import 'package:flutter/material.dart';

class SnippetClipPath extends StatelessWidget {
  const SnippetClipPath({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipPath(
          clipper: SnippetClipPathTriangleClipper(),
          child: SizedBox(
            height: 200,
            child: Image.network('https://i.imgur.com/w6vxktt.png'),
          ),
        ),
      ),
    );
  }
}

class SnippetClipPathTriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(size.width / 2, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(SnippetClipPathTriangleClipper oldClipper) => false;
}
