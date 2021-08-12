import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_snippets/src/models/news.dart';
import 'package:flutter_snippets/src/utils/app_utils.dart';

class FirebaseApi {
  static Stream<List<News>> readNews() => FirebaseFirestore.instance
      .collection('news')
      .orderBy(NewsField.createdTime, descending: true)
      .limit(5)
      .snapshots()
      .transform(AppUtils.transformer(News.fromJson) as StreamTransformer<
          QuerySnapshot<Map<String, dynamic>>, List<News>>);
}
