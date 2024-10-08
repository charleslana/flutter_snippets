import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/routes/app_routes.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppLogo extends StatefulWidget {
  const AppLogo({Key? key}) : super(key: key);

  @override
  _AppLogoState createState() => _AppLogoState();
}

class _AppLogoState extends State<AppLogo> {
  final _logoGradient = const LinearGradient(
    colors: [
      Color.fromRGBO(54, 57, 75, 1),
      Color.fromRGBO(205, 130, 222, 1),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  String _packageVersion = '';

  Future<void> init() async {
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();
    setState(() {
      _packageVersion = packageInfo.version;
    });
  }

  @override
  void initState() {
    init();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacementNamed(context, AppRoutes.snippetWidgets),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          gradient: _logoGradient,
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
                      'V:$_packageVersion',
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xffc4efed),
                      ),
                    ),
                    const Text(
                      'F:2.5.0\nD:2.14.0',
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
