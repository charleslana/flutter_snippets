import 'package:flutter/material.dart';

class SnippetBoxShadow extends StatelessWidget {
  const SnippetBoxShadow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(50),
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
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue,
                    offset: Offset(
                      5.0,
                      5.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
