import 'dart:ui';

class SnippetFilterListModel {
  const SnippetFilterListModel({
    required this.text,
    required this.onPressed,
    this.isNew,
    this.isUpdated,
  });

  final String text;
  final VoidCallback onPressed;
  final bool? isNew;
  final bool? isUpdated;
}
