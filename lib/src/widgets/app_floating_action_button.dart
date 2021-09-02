import 'package:flutter/material.dart';

class AppFloatingActionButton extends StatelessWidget {
  const AppFloatingActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: Colors.purple,
      onPressed: null,
      icon: const Icon(
        Icons.widgets,
        color: Colors.white,
      ),
      label: const Text(
        'Widgets',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
