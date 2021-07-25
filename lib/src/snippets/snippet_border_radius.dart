import 'package:flutter/material.dart';

class SnippetBorderRadius extends StatelessWidget {
  const SnippetBorderRadius({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: SizedBox(
            height: 250,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://i.imgur.com/w6vxktt.png'),
                  fit: BoxFit.fitWidth,
                ),
                border: Border.all(
                  color: Color(0xff000000),
                  width: 4.0,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.all(
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
