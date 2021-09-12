import 'package:flutter/material.dart';

class SnippetRotationTransition extends StatefulWidget {
  const SnippetRotationTransition({Key? key}) : super(key: key);

  @override
  _SnippetRotationTransitionState createState() =>
      _SnippetRotationTransitionState();
}

class _SnippetRotationTransitionState extends State<SnippetRotationTransition>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
        duration: const Duration(milliseconds: 2000),
        vsync: this,
        value: 0.25,
        lowerBound: 0.25,
        upperBound: 0.5);
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.linear,
    );
    _controller.forward();
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
      body: Center(
        child: RotationTransition(
          turns: _animation,
          alignment: const Alignment(0.1, 0.1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Hello World',
                style: TextStyle(fontSize: 36),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
