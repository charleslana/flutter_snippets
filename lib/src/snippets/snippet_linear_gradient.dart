import 'package:flutter/material.dart';

class SnippetLinearGradient extends StatelessWidget {
  const SnippetLinearGradient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.red,
                Colors.green,
                Colors.blue,
              ],
              stops: [
                0.2,
                0.5,
                1,
              ],
            ),
          ),
          child: const Center(
            child: Text(
              'LinearGradient',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
