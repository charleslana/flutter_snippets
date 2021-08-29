import 'package:flutter/material.dart';

class SnippetAnimationIcon extends StatefulWidget {
  const SnippetAnimationIcon({Key? key}) : super(key: key);

  @override
  _SnippetAnimationIconState createState() => _SnippetAnimationIconState();
}

class _SnippetAnimationIconState extends State<SnippetAnimationIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool isPlaying = false;

  void _handleOnPressed() {
    setState(() {
      isPlaying = !isPlaying;
      isPlaying ? _controller.forward() : _controller.reverse();
    });
  }

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 450),
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
      body: Center(
        child: IconButton(
          iconSize: 150,
          splashColor: Colors.greenAccent,
          icon: AnimatedIcon(
            icon: AnimatedIcons.play_pause,
            progress: _controller,
            color: Colors.greenAccent,
          ),
          onPressed: _handleOnPressed,
        ),
      ),
    );
  }
}
