import 'package:flutter/material.dart';

class SnippetPaint extends StatelessWidget {
  const SnippetPaint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.bottomCenter,
        child: CustomPaint(
          size: const Size(400, 400),
          painter: SnippetPaintCurvedPainter(),
        ),
      ),
    );
  }
}

class SnippetPaintCurvedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.teal
      ..strokeWidth = 15;

    final path = Path()
      ..moveTo(0, size.height * 0.7)
      ..quadraticBezierTo(size.width * 0.25, size.height * 0.7,
          size.width * 0.5, size.height * 0.8)
      ..quadraticBezierTo(size.width * 0.75, size.height * 0.9, size.width * 1,
          size.height * 0.8)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
