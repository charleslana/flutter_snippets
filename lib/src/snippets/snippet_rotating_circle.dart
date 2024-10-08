import 'dart:math' as math;

import 'package:flutter/material.dart';

class SnippetRotatingCircle extends StatefulWidget {
  const SnippetRotatingCircle({Key? key}) : super(key: key);

  @override
  _SnippetRotatingCircleState createState() => _SnippetRotatingCircleState();
}

class _SnippetRotatingCircleState extends State<SnippetRotatingCircle>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<dynamic> _animation;

  void _animationStatusListener(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      _controller.reverse();
    } else if (status == AnimationStatus.dismissed) {
      _controller.forward();
    }
  }

  Widget _buildCircle(double radius) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(radius),
        ),
        color: Colors.red,
      ),
    );
  }

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(
        seconds: 2,
      ),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
    );
    _controller
      ..addStatusListener(_animationStatusListener)
      ..forward();
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
      body: Align(
        alignment: const Alignment(0, -0.1),
        child: AnimatedBuilder(
          animation: _controller,
          builder: (BuildContext context, Widget? child) {
            return Transform.rotate(
              angle: math.pi * 2 * _animation.value,
              origin: const Offset(0, 30),
              child: child,
            );
          },
          child: _buildCircle(30),
        ),
      ),
    );
  }
}
