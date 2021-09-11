import 'package:flutter/material.dart';

class SnippetShapeDecoration extends StatelessWidget {
  const SnippetShapeDecoration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: const ShapeDecoration(
            shape: CircleBorder(),
            color: Colors.teal,
            shadows: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(10, 10),
                blurRadius: 10,
              ),
            ],
            image: DecorationImage(
              image: NetworkImage('https://i.imgur.com/lvepd3g.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
