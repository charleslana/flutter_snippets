import 'package:flutter/material.dart';

class SnippetColorFiltered extends StatelessWidget {
  const SnippetColorFiltered({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ColorFiltered(
          colorFilter: const ColorFilter.mode(
            Colors.green,
            BlendMode.modulate,
          ),
          child: Image.network('https://i.imgur.com/hEbcdEB.png'),
        ),
      ),
    );
  }
}
