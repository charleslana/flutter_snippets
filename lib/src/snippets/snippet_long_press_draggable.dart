import 'package:flutter/material.dart';

class SnippetLongPressDraggable extends StatefulWidget {
  const SnippetLongPressDraggable({Key? key}) : super(key: key);

  @override
  _SnippetLongPressDraggableState createState() =>
      _SnippetLongPressDraggableState();
}

class _SnippetLongPressDraggableState extends State<SnippetLongPressDraggable> {
  Offset _offset = Offset.zero;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              Positioned(
                left: _offset.dx,
                top: _offset.dy,
                child: LongPressDraggable(
                  onDragEnd: (details) {
                    setState(() {
                      final double adjustment =
                          MediaQuery.of(context).size.height -
                              constraints.maxHeight;
                      _offset = Offset(
                          details.offset.dx, details.offset.dy - adjustment);
                    });
                  },
                  feedback: const Text(
                    'Press and Move',
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 36,
                    ),
                  ),
                  childWhenDragging: const Text(
                    'Press and Move',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 36,
                    ),
                  ),
                  child: const Text(
                    'Press and Move',
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 36,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
