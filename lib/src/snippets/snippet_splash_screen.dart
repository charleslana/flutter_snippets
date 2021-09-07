import 'dart:async';

import 'package:flutter/material.dart';

class SnippetSplashScreen extends StatefulWidget {
  const SnippetSplashScreen({Key? key}) : super(key: key);

  @override
  _SnippetSplashScreenState createState() => _SnippetSplashScreenState();
}

class _SnippetSplashScreenState extends State<SnippetSplashScreen> {
  late Timer _timer;
  String _text = 'SplashScreen, wait for three seconds';

  void init() {
    _timer = Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute<dynamic>(
            builder: (context) => const SnippetSplashScreenMyAppMaterialPage()),
      );
    });
  }

  void _cancel() {
    _timer.cancel();
    setState(() {
      _text = 'Stopped';
    });
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_text),
            const SizedBox(
              height: 50,
            ),
            const IconButton(
              onPressed: null,
              icon: Icon(
                Icons.audiotrack,
                size: 48,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: _cancel,
              child: const Text('Stop splashscreen'),
            ),
          ],
        ),
      ),
    );
  }
}

class SnippetSplashScreenMyAppMaterialPage extends StatelessWidget {
  const SnippetSplashScreenMyAppMaterialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Other page'),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Close'),
            ),
          ],
        ),
      ),
    );
  }
}
