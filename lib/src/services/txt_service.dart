import 'package:flutter/services.dart' show rootBundle;

class TxtService {
  Future<String> loadData(String txt) async {
    try {
      return await rootBundle.loadString('assets/snippets/$txt.txt');
    } catch (error) {
      return '$error';
    }
  }
}
