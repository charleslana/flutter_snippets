import 'package:flutter/material.dart';

class SnippetAnimatedContainer extends StatefulWidget {
  const SnippetAnimatedContainer({Key? key}) : super(key: key);

  @override
  _SnippetAnimatedContainerState createState() =>
      _SnippetAnimatedContainerState();
}

class _SnippetAnimatedContainerState extends State<SnippetAnimatedContainer> {
  double _width = 100.0;
  double _height = 100.0;

  void _increaseWidth(BuildContext context) {
    final sreenWidth = MediaQuery.of(context).size.width * 0.7;

    setState(() {
      _width = _width >= sreenWidth ? 100.0 : _width += 50.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer'),
        automaticallyImplyLeading: false,
      ),
      body: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        curve: Curves.elasticOut,
        width: _width,
        height: _height,
        child: ElevatedButton(
          child: Text('Toque para\nAumentar a Largura\n$_width'),
          onPressed: () => _increaseWidth(context),
        ),
      ),
    );
  }
}
