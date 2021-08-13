import 'package:flutter_snippets/src/utils/app_utils.dart';

class NewsField {
  static const createdTime = 'createdTime';
}

class NewsModel {
  NewsModel({
    this.id,
    required this.title,
    required this.description,
    this.isDisabled = false,
    this.createdTime,
  });

  static NewsModel fromJson(Map<String, dynamic> json) => NewsModel(
        id: json['id'],
        title: json['title'],
        description: json['description'],
        isDisabled: json['isDisabled'],
        createdTime: AppUtils.toDateTime(json['createdTime']),
      );

  String? id;
  String title;
  String description;
  bool? isDisabled;
  DateTime? createdTime;
}
