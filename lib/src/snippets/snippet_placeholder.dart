import 'package:flutter/material.dart';

class SnippetPlaceholder extends StatelessWidget {
  const SnippetPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Flexible(
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
                  child: Image.network(
                    'https://i.imgur.com/w6vxktt.png',
                    fit: BoxFit.fitWidth,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 5),
                ),
              ),
              Flexible(
                child: Container(
                  width: double.maxFinite,
                  height: 200,
                  child: Image.network(
                    'https://i.imgur.com/w6vxktt.png',
                    fit: BoxFit.fitWidth,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 5),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
