import 'package:flutter/material.dart';

class SnippetBorderRadius extends StatelessWidget {
  const SnippetBorderRadius({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: SizedBox(
            height: 250,
            child: Container(
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage('https://i.imgur.com/w6vxktt.png'),
                  fit: BoxFit.fitWidth,
                ),
                border: Border.all(
                  width: 4,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
