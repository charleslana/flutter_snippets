import 'package:flutter/material.dart';

class AppRoutePage extends PageRouteBuilder {
  final Widget widget;
  final String routeName;
  final Object? arguments;

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
            return ScaleTransition(
              scale: Tween<double>(
                begin: 0.0,
                end: 1.0,
              ).animate(
                CurvedAnimation(
                  parent: animation,
                  curve: Interval(
                    0.00,
                    0.50,
                    curve: Curves.bounceIn,
                  ),
                ),
              ),
              child: ScaleTransition(
                scale: Tween<double>(
                  begin: 1.5,
                  end: 1.0,
                ).animate(
                  CurvedAnimation(
                    parent: animation,
                    curve: Interval(
                      0.50,
                      1.00,
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
