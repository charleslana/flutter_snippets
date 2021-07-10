import 'package:flutter_snippets/src/models/snippet_filter_list_model.dart';

class SnippetFilterModel {
  final String title;
  final List<SnippetFilterListModel> snippets;
  final int bottomNavigationBarIndex;

  const SnippetFilterModel({
    required this.title,
    required this.snippets,
    required this.bottomNavigationBarIndex,
  });
}
