import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/models/news.dart';

class NewsProvider extends ChangeNotifier {
  List<News> _news = [];

  List<News> get news =>
      _news.where((news) => news.isDisabled == false).toList();

  void setNews(List<News>? news) =>
      WidgetsBinding.instance!.addPostFrameCallback((_) {
        _news = news!;
        notifyListeners();
      });
}
