import 'package:flutter/material.dart';

class SnippetMouseRegion extends StatefulWidget {
  const SnippetMouseRegion({Key? key}) : super(key: key);

  @override
  _SnippetMouseRegionState createState() => _SnippetMouseRegionState();
}

class _SnippetMouseRegionState extends State<SnippetMouseRegion> {
  bool _isVisible = false;

  Widget _dot() {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        color: Colors.orangeAccent,
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }

  void _toggleDot() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              onEnter: (_) => _toggleDot(),
              onExit: (_) => _toggleDot(),
              child: _dot(),
            ),
            Padding(
              padding: const EdgeInsets.all(50),
              child: Visibility(
                visible: _isVisible,
                child: const Text(
                  'Tap the point',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
