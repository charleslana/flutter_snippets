import 'package:flutter/material.dart';

class SnippetPlaceholder extends StatelessWidget {
  const SnippetPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const Flexible(
                child: Placeholder(
                  fallbackHeight: 200,
                  color: Colors.blue,
                  strokeWidth: 5,
                ),
              ),
              Flexible(
                child: Container(
                  width: double.maxFinite,
                  height: 200,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Image.network(
                    'https://i.imgur.com/w6vxktt.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  width: double.maxFinite,
                  height: 200,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Image.network(
                    'https://i.imgur.com/w6vxktt.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
