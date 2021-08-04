import 'package:flutter/widgets.dart';

class SnippetShowModel {
  final String data;
  final String title;
  final Widget? widget;
  final String? tip;

  const SnippetShowModel({
    required this.data,
    required this.title,
    this.widget,
    this.tip,
  });
}
