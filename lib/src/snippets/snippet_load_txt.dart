import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class SnippetLoadTxt extends StatefulWidget {
  const SnippetLoadTxt({Key? key}) : super(key: key);

  @override
  _SnippetLoadTxtState createState() => _SnippetLoadTxtState();
}

class _SnippetLoadTxtState extends State<SnippetLoadTxt> {
  String _data = '';

  Future<void> _loadData() async {
    final _loadedData = await rootBundle.loadString('assets/txt/data.txt');
    setState(() {
      _data = _loadedData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _data,
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: _loadData,
              child: const Text('Click here to load text'),
            ),
          ],
        ),
      ),
    );
  }
}
