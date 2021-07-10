import 'package:flutter/widgets.dart';

class SnippetShowModel {
  final String data;
  final String title;
  final Widget? widget;
  final int bottomNavigationBarIndex;

  const SnippetShowModel({
    required this.data,
    required this.title,
    this.widget,
    required this.bottomNavigationBarIndex,
  });
}
