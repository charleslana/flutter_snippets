import 'dart:ui';

class SnippetFilterListModel {
  const SnippetFilterListModel({
    required this.text,
    required this.onPressed,
    this.isNew,
  });

  final String text;
  final VoidCallback onPressed;
  final bool? isNew;
}
