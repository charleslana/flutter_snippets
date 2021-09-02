import 'package:flutter/material.dart';

class SnippetAnimatedContainer extends StatefulWidget {
  const SnippetAnimatedContainer({Key? key}) : super(key: key);

  @override
  _SnippetAnimatedContainerState createState() =>
      _SnippetAnimatedContainerState();
}

class _SnippetAnimatedContainerState extends State<SnippetAnimatedContainer> {
  double _width = 100;

  void _increaseWidth(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width * 0.7;

    setState(() {
      _width = _width >= screenWidth ? 100 : _width += 50;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.elasticOut,
        width: _width,
        height: 100,
        child: ElevatedButton(
          onPressed: () => _increaseWidth(context),
          child: Text('Tap to\nincrease width\n$_width'),
        ),
      ),
    );
  }
}
