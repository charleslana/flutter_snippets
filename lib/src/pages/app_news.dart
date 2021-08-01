import 'package:flutter/material.dart';

class AppNews extends StatefulWidget {
  const AppNews({Key? key}) : super(key: key);

  @override
  _AppNewsState createState() => _AppNewsState();
}

class _AppNewsState extends State<AppNews> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('News'),
        ),
        body: Center(
          child: Text('Coming soon'),
        ),
      ),
    );
  }
}
