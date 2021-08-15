import 'package:flutter/material.dart';

class SnippetPageRouteBuilder extends StatelessWidget {
  const SnippetPageRouteBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(_createRoute());
          },
          child: const Text('Go to route'),
        ),
      ),
    );
  }
}

Route<dynamic> _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const SnippetPageRouteBuilderPage2(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return ScaleTransition(
        scale: Tween<double>(
          begin: 0,
          end: 1,
        ).animate(
          CurvedAnimation(
            parent: animation,
            curve: const Interval(
              0,
              0.50,
              curve: Curves.bounceIn,
            ),
          ),
        ),
        child: ScaleTransition(
          scale: Tween<double>(
            begin: 1.5,
            end: 1,
          ).animate(
            CurvedAnimation(
              parent: animation,
              curve: const Interval(
                0.50,
                1,
                curve: Curves.easeIn,
              ),
            ),
          ),
          child: child,
        ),
      );
    },
  );
}

class SnippetPageRouteBuilderPage2 extends StatelessWidget {
  const SnippetPageRouteBuilderPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Back'),
        ),
      ),
    );
  }
}
