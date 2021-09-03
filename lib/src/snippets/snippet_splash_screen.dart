import 'package:flutter/material.dart';

class SnippetSplashScreen extends StatefulWidget {
  const SnippetSplashScreen({Key? key}) : super(key: key);

  @override
  _SnippetSplashScreenState createState() => _SnippetSplashScreenState();
}

class _SnippetSplashScreenState extends State<SnippetSplashScreen> {
  Future<void> init() async {
    await Future<dynamic>.delayed(const Duration(seconds: 3)).then((_) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute<dynamic>(
            builder: (context) => const SnippetSplashScreenMyAppMaterialPage()),
      );
    });
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('SplashScreen, wait for three seconds'),
            SizedBox(
              height: 50,
            ),
            IconButton(
              onPressed: null,
              icon: Icon(
                Icons.audiotrack,
                size: 48,
              ),
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
    return const Scaffold(
      body: Center(
        child: Text('Other page'),
      ),
    );
  }
}
