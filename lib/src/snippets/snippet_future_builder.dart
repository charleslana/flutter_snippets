import 'package:flutter/material.dart';

class SnippetFutureBuilder extends StatelessWidget {
  const SnippetFutureBuilder({Key? key}) : super(key: key);

  Future<String> getFutureData() async =>
      Future.delayed(const Duration(seconds: 2), () => 'Data loaded');

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
                style: const TextStyle(fontSize: 20),
              );
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
