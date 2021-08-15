import 'package:flutter/material.dart';

class SnippetFadeTransition extends StatefulWidget {
  const SnippetFadeTransition({Key? key}) : super(key: key);

  @override
  _SnippetFadeTransitionState createState() => _SnippetFadeTransitionState();
}

class _SnippetFadeTransitionState extends State<SnippetFadeTransition>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: Image.network('https://i.imgur.com/hEbcdEB.png'),
        ),
      ),
    );
  }
}
