import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/routes/app_routes.dart';

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
      () => Navigator.pushReplacementNamed(context, AppRoutes.snippetBasic),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          gradient: logoGradient,
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Image.asset(
                        'assets/images/logo_flutter_snippets.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'V:1.0.0',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xffc4efed),
                      ),
                    ),
                    Text(
                      'F:2.2.3',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xffc4efed),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
