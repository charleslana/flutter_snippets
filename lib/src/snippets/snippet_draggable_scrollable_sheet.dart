import 'package:flutter/material.dart';

class SnippetDraggableScrollableSheet extends StatefulWidget {
  const SnippetDraggableScrollableSheet({Key? key}) : super(key: key);

  @override
  _SnippetDraggableScrollableSheetState createState() =>
      _SnippetDraggableScrollableSheetState();
}

class _SnippetDraggableScrollableSheetState
    extends State<SnippetDraggableScrollableSheet>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final Duration _duration = const Duration(milliseconds: 500);

  void _showSheet() {
    showModalBottomSheet<dynamic>(
      context: context,
      isScrollControlled: true,
      builder: (_) {
        return DraggableScrollableSheet(
          expand: false,
          builder: (_, controller) {
            return Container(
              color: Colors.blue[500],
              child: ListView.builder(
                controller: controller,
                itemBuilder: (_, index) => ListTile(title: Text('Item $index')),
              ),
            );
          },
        );
      },
    ).then((_) => _toggleIcon());
  }

  void _toggleIcon() {
    _controller.isDismissed
        ? _controller.forward().whenComplete(_showSheet)
        : _controller.reverse();
  }

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: _duration);
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GestureDetector(
        child: FloatingActionButton(
          heroTag: 'bnt1',
          elevation: 5,
          backgroundColor: Colors.deepOrange,
          foregroundColor: Colors.white,
          onPressed: _toggleIcon,
          child: AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: _controller,
          ),
        ),
      ),
    );
  }
}
