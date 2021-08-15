import 'package:flutter/material.dart';

class SnippetHero extends StatelessWidget {
  const SnippetHero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Hero(
              tag: 'HeroOne',
              child: Icon(
                Icons.image,
                size: 50,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    SnippetHeroCustomPageRoute<dynamic>(
                        const SnippetHeroSecondScreen()));
              },
              child: const Text('Go to second screen'),
            ),
          ],
        ),
      ),
    );
  }
}

class SnippetHeroSecondScreen extends StatelessWidget {
  const SnippetHeroSecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Hero(
              tag: 'HeroOne',
              child: Icon(
                Icons.image,
                size: 150,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back to first screen'),
            ),
          ],
        ),
      ),
    );
  }
}

class SnippetHeroCustomPageRoute<T> extends PageRoute<T> {
  SnippetHeroCustomPageRoute(this.child);

  final Widget child;

  @override
  Color get barrierColor => Colors.black;

  @override
  String get barrierLabel => '';

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => const Duration(seconds: 1);

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}
