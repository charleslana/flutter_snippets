import 'package:flutter/material.dart';

class SnippetAnimatedImage extends StatelessWidget {
  const SnippetAnimatedImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(145, 131, 222, 1),
            Color.fromRGBO(160, 148, 227, 1),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: topPadding),
              const SizedBox(height: 10),
              const SnippetAnimatedImageAnimatedImage(),
            ],
          ),
        ),
      ),
    );
  }
}

class SnippetAnimatedImageAnimatedImage extends StatefulWidget {
  const SnippetAnimatedImageAnimatedImage({Key? key}) : super(key: key);

  @override
  _SnippetAnimatedImageAnimatedImageState createState() =>
      _SnippetAnimatedImageAnimatedImageState();
}

class _SnippetAnimatedImageAnimatedImageState
    extends State<SnippetAnimatedImageAnimatedImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late final Animation<Offset> _animation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(0, 0.08),
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network('https://i.imgur.com/TsT51e7.png'),
        SlideTransition(
          position: _animation,
          child: Image.network('https://i.imgur.com/Wwnp1FB.png'),
        ),
      ],
    );
  }
}
