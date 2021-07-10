import 'dart:ui';

class SnippetFilterListModel {
  final String text;
  final VoidCallback onPressed;

  const SnippetFilterListModel({
    required this.text,
    required this.onPressed,
  });
}
