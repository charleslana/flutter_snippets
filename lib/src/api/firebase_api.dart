import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_snippets/src/models/news_model.dart';
import 'package:flutter_snippets/src/utils/app_utils.dart';

class FirebaseApi {
  static Stream<List<NewsModel>> readNews() => FirebaseFirestore.instance
      .collection('news')
      .orderBy(NewsField.createdTime, descending: true)
      .limit(5)
      .snapshots()
      .transform(AppUtils.transformer(NewsModel().fromJson)
          as StreamTransformer<QuerySnapshot<Map<String, dynamic>>,
              List<NewsModel>>);
}
