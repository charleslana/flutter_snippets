import 'package:flutter/material.dart';

class SnippetOnGenerateRoute extends StatelessWidget {
  const SnippetOnGenerateRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Hello World!'),
            const SizedBox(
              height: 50,
            ),
            const IconButton(
              onPressed: null,
              icon: Icon(Icons.favorite),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                SnippetOnGenerateRoutePageTransition<dynamic>(
                    child: const SnippetOnGenerateRouteMyAppMaterialPage()),
              ),
              child: const Text('Go to other page'),
            ),
          ],
        ),
      ),
    );
  }
}

class SnippetOnGenerateRouteMyAppMaterialPage extends StatelessWidget {
  const SnippetOnGenerateRouteMyAppMaterialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Other Page'),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}

class SnippetOnGenerateRoutePageTransition<T> extends PageRouteBuilder<T> {
  SnippetOnGenerateRoutePageTransition({
    required this.child,
  }) : super(
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return child;
          },
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return FadeTransition(opacity: animation, child: child);
          },
        );

  final Widget child;
}
