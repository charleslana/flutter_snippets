import 'package:flutter/services.dart' show rootBundle;

class TextService {
  Future<String> loadData(String text) async {
    try {
      return await rootBundle.loadString('assets/snippets/$text.txt');
    } catch (error) {
      return '$error';
    }
  }
}
