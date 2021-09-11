import 'package:flutter/material.dart';

class SnippetCustomPaint extends StatefulWidget {
  const SnippetCustomPaint({Key? key}) : super(key: key);

  @override
  _SnippetCustomPaintState createState() => _SnippetCustomPaintState();
}

class _SnippetCustomPaintState extends State<SnippetCustomPaint>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<dynamic> _animation;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 3000))
      ..repeat();

    _animation = Tween(begin: 5.1, end: 3.1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Transform.rotate(
            angle: _controller.value * 4 * 3.14,
            child: Stack(
              children: [
                Center(
                  child: SizedBox(
                    width: 150,
                    height: 150,
                    child: CustomPaint(
                      painter: SnippetCustomPaintArcPainter(
                          radius: _animation.value),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class SnippetCustomPaintArcPainter extends CustomPainter {
  SnippetCustomPaintArcPainter({
    this.radius = 5,
  });

  final double radius;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;
    final Rect rect = Rect.fromCenter(
      center: size.center(Offset.zero),
      width: size.width / radius,
      height: size.height / radius,
    );
    canvas
      ..drawArc(rect, 3.14 / 4, 3.14 / 2, false, paint)
      ..drawArc(rect, -3.14 / 4, -3.14 / 2, false, paint);
  }

  @override
  bool shouldRepaint(SnippetCustomPaintArcPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(SnippetCustomPaintArcPainter oldDelegate) =>
      false;
}
