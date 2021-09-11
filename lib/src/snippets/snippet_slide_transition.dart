import 'package:flutter/material.dart';

class SnippetSlideTransition extends StatefulWidget {
  const SnippetSlideTransition({Key? key}) : super(key: key);

  @override
  _SnippetSlideTransitionState createState() => _SnippetSlideTransitionState();
}

class _SnippetSlideTransitionState extends State<SnippetSlideTransition>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat();
    _animation = Tween<Offset>(
      begin: const Offset(-1, 0),
      end: const Offset(2, 0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.linear,
    ));
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
      body: Builder(
        builder: (context) => SlideTransition(
          position: _animation,
          textDirection: TextDirection.ltr,
          child: const Text(
            'Hello World',
            textScaleFactor: 3,
          ),
        ),
      ),
    );
  }
}
