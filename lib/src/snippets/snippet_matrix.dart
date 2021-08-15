import 'package:flutter/material.dart';

class SnippetMatrix extends StatefulWidget {
  const SnippetMatrix({Key? key}) : super(key: key);

  @override
  _SnippetMatrixState createState() => _SnippetMatrixState();
}

class _SnippetMatrixState extends State<SnippetMatrix> {
  Offset _offset = Offset.zero;

  Widget _defaultApp(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Double tap to normalize screen',
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: const FloatingActionButton(
        heroTag: 'btn1',
        onPressed: null,
        tooltip: 'Nothing',
        child: Icon(Icons.home),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001)
        ..rotateX(0.01 * _offset.dy)
        ..rotateY(-0.01 * _offset.dx),
      alignment: FractionalOffset.center,
      child: GestureDetector(
        onPanUpdate: (details) => setState(() => _offset += details.delta),
        onDoubleTap: () => setState(() => _offset = Offset.zero),
        child: _defaultApp(context),
      ),
    );
  }
}
