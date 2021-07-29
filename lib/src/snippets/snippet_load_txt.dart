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
      appBar: AppBar(
        title: Text('Carregar Txt'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _data,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: Text('Clique aqui para carregar o texto'),
              onPressed: () => _loadData(),
            ),
          ],
        ),
      ),
    );
  }
}
