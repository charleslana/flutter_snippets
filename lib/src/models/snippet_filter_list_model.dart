import 'dart:ui';

class SnippetFilterListModel {
  const SnippetFilterListModel({
    required this.text,
    required this.onPressed,
  });

  final String text;
  final VoidCallback onPressed;
}
