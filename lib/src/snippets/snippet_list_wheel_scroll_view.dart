import 'package:flutter/material.dart';

class SnippetListWheelScrollView extends StatelessWidget {
  const SnippetListWheelScrollView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListWheelScrollView(
            itemExtent: 200,
            diameterRatio: 1.5,
            children: const [
              Text('Flutter'),
              Text('Dart'),
              Text('Development'),
              Text('Develop'),
            ],
          ),
        ),
      ),
    );
  }
}
