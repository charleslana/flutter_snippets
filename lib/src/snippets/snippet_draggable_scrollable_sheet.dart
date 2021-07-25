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
  Duration _duration = Duration(milliseconds: 500);

  void _showSheet() {
    showModalBottomSheet(
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
                itemBuilder: (_, i) => ListTile(title: Text('Item $i')),
              ),
            );
          },
        );
      },
    ).then((_) => toggleIcon());
  }

  void toggleIcon() {
    _controller.isDismissed
        ? _controller.forward().whenComplete(() {
            _showSheet();
          })
        : _controller.reverse();
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: _duration);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Ola'),
      ),
      floatingActionButton: GestureDetector(
        child: FloatingActionButton(
          heroTag: 'bnt1',
          child: AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: _controller,
          ),
          elevation: 5,
          backgroundColor: Colors.deepOrange,
          foregroundColor: Colors.white,
          onPressed: () async {
            toggleIcon();
          },
        ),
      ),
    );
  }
}
