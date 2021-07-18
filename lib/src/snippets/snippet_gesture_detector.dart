import 'package:flutter/material.dart';

class SnippetGestureDetector extends StatelessWidget {
  const SnippetGestureDetector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            print('Caixa clicada');
          },
          child: Container(
            height: 60.0,
            width: 120.0,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.cyan,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Center(
              child: Text('Clique Aqui'),
            ),
          ),
        ),
      ),
    );
  }
}
