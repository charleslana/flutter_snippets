import 'package:flutter/material.dart';

class SnippetCircularProgressIndicator extends StatefulWidget {
  const SnippetCircularProgressIndicator({Key? key}) : super(key: key);

  @override
  _SnippetCircularProgressIndicatorState createState() =>
      _SnippetCircularProgressIndicatorState();
}

class _SnippetCircularProgressIndicatorState
    extends State<SnippetCircularProgressIndicator> {
  bool _isLoading = false;

  void _toggleLoading() {
    _isLoading = !_isLoading;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isLoading)
              const CircularProgressIndicator(
                strokeWidth: 7,
              ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(_toggleLoading);
              },
              child: const Text(
                'True/False',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
