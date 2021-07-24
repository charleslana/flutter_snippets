import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/pages/snippet_basic.dart';

class AppLogo extends StatefulWidget {
  const AppLogo({Key? key}) : super(key: key);

  @override
  _AppLogoState createState() => _AppLogoState();
}

class _AppLogoState extends State<AppLogo> {
  final logoGradient = LinearGradient(
    colors: [
      Color.fromRGBO(54, 57, 75, 1),
      Color.fromRGBO(205, 130, 222, 1),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) => SnippetBasic())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        gradient: logoGradient,
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 3,
                  child: Image.asset(
                    'assets/images/logo_flutter_snippets.png',
                    fit: BoxFit.contain,
                  ),
                ),
                Flexible(
                  child: Text(
                    'SDK Version: 2.2.3',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xffc4efed),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
