import 'dart:math' as math;

import 'package:flutter/material.dart';

class SnippetTransform extends StatelessWidget {
  const SnippetTransform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transform'),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.black,
                child: Transform(
                  alignment: Alignment.topRight,
                  transform: Matrix4.skewY(0.3)..rotateZ(-math.pi / 12.0),
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    color: Color(0xffe8581c),
                    child: Text('Meu Texto!'),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Transform.rotate(
                angle: math.pi / 4,
                child: Icon(
                  Icons.menu,
                  size: 40,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Transform.scale(
                scale: 1.5,
                child: Icon(
                  Icons.menu,
                  size: 40,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Transform.translate(
                offset: Offset(50, 50),
                child: Icon(
                  Icons.menu,
                  size: 40,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Transform(
                transform: Matrix4.skewX(0.3),
                child: Icon(
                  Icons.menu,
                  size: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
