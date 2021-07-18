import 'package:flutter/material.dart';

class SnippetFutureBuilder extends StatelessWidget {
  const SnippetFutureBuilder({Key? key}) : super(key: key);

  Future<String> getFutureData() async =>
      await Future.delayed(Duration(seconds: 2), () => 'Dados carregado');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: getFutureData(),
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            if (snapshot.hasData) {
              return Text(
                snapshot.data!,
                style: TextStyle(fontSize: 20),
              );
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
