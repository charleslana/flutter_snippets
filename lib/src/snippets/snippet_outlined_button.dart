import 'package:flutter/material.dart';

class SnippetOutlinedButton extends StatelessWidget {
  const SnippetOutlinedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            side: const BorderSide(width: 2, color: Colors.blue),
          ),
          onPressed: () {},
          child: const Text('Radius'),
        ),
      ),
    );
  }
}
