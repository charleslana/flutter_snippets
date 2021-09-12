import 'package:flutter/material.dart';

class SnippetAnimatedSize extends StatefulWidget {
  const SnippetAnimatedSize({Key? key}) : super(key: key);

  @override
  _SnippetAnimatedSizeState createState() => _SnippetAnimatedSizeState();
}

class _SnippetAnimatedSizeState extends State<SnippetAnimatedSize> {
  double _size = 150;

  Widget _buildChild() {
    return Container(
      width: _size,
      height: _size,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://i.imgur.com/w6vxktt.png'),
        ),
      ),
    );
  }

  Widget _buildAnimatedSize() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: AnimatedSize(
        duration: const Duration(seconds: 2),
        child: _buildChild(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildAnimatedSize(),
            const SizedBox(height: 30),
            ElevatedButton(
              child: const Text('Change Size'),
              onPressed: () {
                setState(() {
                  _size = _size == 150 ? 250 : 150;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
