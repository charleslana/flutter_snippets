import 'package:flutter/material.dart';

class SnippetBoxShadow extends StatelessWidget {
  const SnippetBoxShadow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50),
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
                boxShadow: const [
                  BoxShadow(
                    color: Colors.blue,
                    offset: Offset(
                      5,
                      5,
                    ),
                    blurRadius: 10,
                    spreadRadius: 2,
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
