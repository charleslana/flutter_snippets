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
    _isLoading = _isLoading ? false : true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isLoading)
              CircularProgressIndicator(
                strokeWidth: 7,
              ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Text(
                'True/False',
              ),
              onPressed: () {
                setState(() {
                  _toggleLoading();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
