import 'package:flutter/material.dart';

class AppRoutePage extends PageRouteBuilder<dynamic> {
  AppRoutePage({
    required this.widget,
    required this.routeName,
    this.arguments,
  }) : super(
          settings: RouteSettings(
            name: routeName,
            arguments: arguments,
          ),
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return widget;
          },
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            const begin = Offset(0, 1);
            const end = Offset.zero;
            const curve = Curves.ease;

            final tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        );

  final Widget widget;
  final String routeName;
  final Object? arguments;
}
