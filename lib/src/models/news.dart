import 'package:flutter_snippets/src/utils/app_utils.dart';

class NewsField {
  static const createdTime = 'createdTime';
}

class News {
  String? id;
  String title;
  String description;
  bool? isDisabled;
  DateTime? createdTime;

  News({
    this.id,
    required this.title,
    required this.description,
    this.isDisabled = false,
    this.createdTime,
  });

  static News fromJson(Map<String, dynamic> json) => News(
        id: json['id'],
        title: json['title'],
        description: json['description'],
        isDisabled: json['isDisabled'],
        createdTime: AppUtils.toDateTime(json['createdTime']),
      );
}
