import 'package:flutter/material.dart';

class AppFloatingActionButton extends StatelessWidget {
  const AppFloatingActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FloatingActionButton.extended(
      backgroundColor: Colors.purple,
      onPressed: null,
      icon: Icon(
        Icons.widgets,
        color: Colors.white,
      ),
      label: Text(
        'Widgets',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
