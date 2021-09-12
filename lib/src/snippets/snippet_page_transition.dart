import 'package:flutter/material.dart';

class SnippetPageTransition extends StatelessWidget {
  const SnippetPageTransition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Hello World!'),
              const SizedBox(
                height: 10,
              ),
              const IconButton(
                onPressed: null,
                icon: Icon(Icons.favorite),
              ),
              const SizedBox(
                height: 10,
              ),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  ElevatedButton(
                    onPressed: () => Navigator.push(
                      context,
                      PageTransition<dynamic>(
                        type: SnippetPageTransitionPageTransitionType.fade,
                        child: const SnippetPageTransitionMyAppMaterialPage(),
                      ),
                    ),
                    child: const Text('Fade'),
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.push(
                      context,
                      PageTransition<dynamic>(
                        type: SnippetPageTransitionPageTransitionType.downToUp,
                        child: const SnippetPageTransitionMyAppMaterialPage(),
                      ),
                    ),
                    child: const Text('Down to up'),
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.push(
                      context,
                      PageTransition<dynamic>(
                        type:
                            SnippetPageTransitionPageTransitionType.leftToRight,
                        child: const SnippetPageTransitionMyAppMaterialPage(),
                      ),
                    ),
                    child: const Text('Left to right'),
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.push(
                      context,
                      PageTransition<dynamic>(
                        type: SnippetPageTransitionPageTransitionType
                            .leftToRightWithFade,
                        child: const SnippetPageTransitionMyAppMaterialPage(),
                      ),
                    ),
                    child: const Text('Left to right with fade'),
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.push(
                      context,
                      PageTransition<dynamic>(
                        type:
                            SnippetPageTransitionPageTransitionType.rightToLeft,
                        child: const SnippetPageTransitionMyAppMaterialPage(),
                      ),
                    ),
                    child: const Text('Right to left'),
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.push(
                      context,
                      PageTransition<dynamic>(
                        type: SnippetPageTransitionPageTransitionType
                            .rightToLeftWithFade,
                        child: const SnippetPageTransitionMyAppMaterialPage(),
                      ),
                    ),
                    child: const Text('Right to left with fade'),
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.push(
                      context,
                      PageTransition<dynamic>(
                        type: SnippetPageTransitionPageTransitionType.rotate,
                        child: const SnippetPageTransitionMyAppMaterialPage(),
                      ),
                    ),
                    child: const Text('Rotate'),
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.push(
                      context,
                      PageTransition<dynamic>(
                        type: SnippetPageTransitionPageTransitionType.scale,
                        child: const SnippetPageTransitionMyAppMaterialPage(),
                      ),
                    ),
                    child: const Text('Scale'),
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.push(
                      context,
                      PageTransition<dynamic>(
                        type: SnippetPageTransitionPageTransitionType.size,
                        child: const SnippetPageTransitionMyAppMaterialPage(),
                      ),
                    ),
                    child: const Text('Size'),
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.push(
                      context,
                      PageTransition<dynamic>(
                        type: SnippetPageTransitionPageTransitionType.upToDown,
                        child: const SnippetPageTransitionMyAppMaterialPage(),
                      ),
                    ),
                    child: const Text('Up to down'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SnippetPageTransitionMyAppMaterialPage extends StatelessWidget {
  const SnippetPageTransitionMyAppMaterialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Page'),
            const SizedBox(
              height: 10,
            ),
            const IconButton(
              onPressed: null,
              icon: Icon(Icons.beach_access),
            ),
            const SizedBox(
              height: 10,
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

enum SnippetPageTransitionPageTransitionType {
  fade,
  rightToLeft,
  leftToRight,
  upToDown,
  downToUp,
  scale,
  rotate,
  size,
  rightToLeftWithFade,
  leftToRightWithFade,
}

class PageTransition<T> extends PageRouteBuilder<T> {
  PageTransition({
    required this.child,
    required this.type,
    this.curve = Curves.linear,
    this.alignment = Alignment.center,
    this.duration = const Duration(milliseconds: 300),
  }) : super(
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return child;
          },
          transitionDuration: duration,
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            switch (type) {
              case SnippetPageTransitionPageTransitionType.fade:
                return FadeTransition(opacity: animation, child: child);

              case SnippetPageTransitionPageTransitionType.rightToLeft:
                return SlideTransition(
                  transformHitTests: false,
                  position: Tween<Offset>(
                    begin: const Offset(1, 0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: SlideTransition(
                    position: Tween<Offset>(
                      begin: Offset.zero,
                      end: const Offset(-1, 0),
                    ).animate(secondaryAnimation),
                    child: child,
                  ),
                );

              case SnippetPageTransitionPageTransitionType.leftToRight:
                return SlideTransition(
                  transformHitTests: false,
                  position: Tween<Offset>(
                    begin: const Offset(-1, 0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: SlideTransition(
                    position: Tween<Offset>(
                      begin: Offset.zero,
                      end: const Offset(1, 0),
                    ).animate(secondaryAnimation),
                    child: child,
                  ),
                );

              case SnippetPageTransitionPageTransitionType.upToDown:
                return SlideTransition(
                  transformHitTests: false,
                  position: Tween<Offset>(
                    begin: const Offset(0, -1),
                    end: Offset.zero,
                  ).animate(animation),
                  child: SlideTransition(
                    position: Tween<Offset>(
                      begin: Offset.zero,
                      end: const Offset(0, 1),
                    ).animate(secondaryAnimation),
                    child: child,
                  ),
                );

              case SnippetPageTransitionPageTransitionType.downToUp:
                return SlideTransition(
                  transformHitTests: false,
                  position: Tween<Offset>(
                    begin: const Offset(0, 1),
                    end: Offset.zero,
                  ).animate(animation),
                  child: SlideTransition(
                    position: Tween<Offset>(
                      begin: Offset.zero,
                      end: const Offset(0, -1),
                    ).animate(secondaryAnimation),
                    child: child,
                  ),
                );

              case SnippetPageTransitionPageTransitionType.scale:
                return ScaleTransition(
                  alignment: alignment,
                  scale: CurvedAnimation(
                    parent: animation,
                    curve: Interval(
                      0,
                      0.50,
                      curve: curve,
                    ),
                  ),
                  child: child,
                );

              case SnippetPageTransitionPageTransitionType.rotate:
                return RotationTransition(
                  alignment: alignment,
                  turns: animation,
                  child: ScaleTransition(
                    alignment: alignment,
                    scale: animation,
                    child: FadeTransition(
                      opacity: animation,
                      child: child,
                    ),
                  ),
                );

              case SnippetPageTransitionPageTransitionType.size:
                return Align(
                  alignment: alignment,
                  child: SizeTransition(
                    sizeFactor: CurvedAnimation(
                      parent: animation,
                      curve: curve,
                    ),
                    child: child,
                  ),
                );

              case SnippetPageTransitionPageTransitionType.rightToLeftWithFade:
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(1, 0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: FadeTransition(
                    opacity: animation,
                    child: SlideTransition(
                      position: Tween<Offset>(
                        begin: Offset.zero,
                        end: const Offset(-1, 0),
                      ).animate(secondaryAnimation),
                      child: child,
                    ),
                  ),
                );

              case SnippetPageTransitionPageTransitionType.leftToRightWithFade:
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(-1, 0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: FadeTransition(
                    opacity: animation,
                    child: SlideTransition(
                      position: Tween<Offset>(
                        begin: Offset.zero,
                        end: const Offset(1, 0),
                      ).animate(secondaryAnimation),
                      child: child,
                    ),
                  ),
                );

              default:
                return FadeTransition(opacity: animation, child: child);
            }
          },
        );

  final Widget child;
  final SnippetPageTransitionPageTransitionType type;
  final Curve curve;
  final Alignment alignment;
  final Duration duration;
}
