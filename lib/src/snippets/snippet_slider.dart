import 'package:flutter/material.dart';

class SnippetSlider extends StatefulWidget {
  const SnippetSlider({Key? key}) : super(key: key);

  @override
  _SnippetSliderState createState() => _SnippetSliderState();
}

class _SnippetSliderState extends State<SnippetSlider> {
  double _currentValue = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                _currentValue.toStringAsFixed(0),
                style: TextStyle(fontSize: 25),
              ),
            ),
            Slider(
              value: _currentValue,
              onChanged: (newValue) {
                setState(() {
                  _currentValue = newValue;
                });
              },
              min: 0,
              max: 100,
            ),
          ],
        ),
      ),
    );
  }
}
