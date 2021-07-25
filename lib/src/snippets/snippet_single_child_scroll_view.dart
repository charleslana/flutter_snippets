import 'package:flutter/material.dart';

class SnippetSingleChildScrollView extends StatelessWidget {
  const SnippetSingleChildScrollView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.5;

    return Scaffold(
      body: Center(
        child: Container(
          width: width,
          margin: EdgeInsets.all(15.0),
          padding: EdgeInsets.all(3.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blueAccent,
              width: 5.0,
            ),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Text(
              'Mova o texto para o lado',
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                letterSpacing: 3,
                wordSpacing: 3,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
