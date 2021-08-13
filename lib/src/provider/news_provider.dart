import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/models/news_model.dart';

class NewsProvider extends ChangeNotifier {
  List<NewsModel> _news = [];

  List<NewsModel> get news =>
      _news.where((news) => news.isDisabled == false).toList();

  void setNews(List<NewsModel>? news) =>
      WidgetsBinding.instance!.addPostFrameCallback((_) {
        _news = news!;
        notifyListeners();
      });
}
