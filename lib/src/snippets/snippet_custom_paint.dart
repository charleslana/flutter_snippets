import 'package:flutter/material.dart';

class SnippetCustomPaint extends StatefulWidget {
  const SnippetCustomPaint({Key? key}) : super(key: key);

  @override
  _SnippetCustomPaintState createState() => _SnippetCustomPaintState();
}

class _SnippetCustomPaintState extends State<SnippetCustomPaint>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 3000));
    _animation = Tween(begin: 5.0, end: 3.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );
    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.stop();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Transform.rotate(
            angle: _controller.value * 4.0 * 3.14,
            child: Stack(
              children: [
                Center(
                  child: Container(
                    width: 150,
                    height: 150,
                    child: CustomPaint(
                      painter: ArcPainter(radius: _animation.value),
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

class ArcPainter extends CustomPainter {
  final double radius;

  ArcPainter({
    this.radius = 5,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 5.0
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;
    Rect rect = Rect.fromCenter(
      center: size.center(Offset.zero),
      width: size.width / radius,
      height: size.height / radius,
    );
    canvas.drawArc(rect, 3.14 / 4, 3.14 / 2, false, paint);
    canvas.drawArc(rect, -3.14 / 4, -3.14 / 2, false, paint);
  }

  @override
  bool shouldRepaint(ArcPainter old) {
    return true;
  }
}
