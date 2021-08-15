import 'package:flutter/material.dart';

class SnippetScrollController extends StatefulWidget {
  const SnippetScrollController({Key? key}) : super(key: key);

  @override
  _SnippetScrollControllerState createState() =>
      _SnippetScrollControllerState();
}

class _SnippetScrollControllerState extends State<SnippetScrollController> {
  late ScrollController _controller;
  List<String> items = List.generate(100, (index) => 'Init $index');

  void _scrollListener() {
    final height = MediaQuery.of(context).size.height * 0.50;

    if (_controller.position.extentAfter < height) {
      setState(() {
        items.addAll(List.generate(10, (index) => 'Inserted $index'));
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _controller = ScrollController()..addListener(_scrollListener);
  }

  @override
  void dispose() {
    _controller.removeListener(_scrollListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: ListView.builder(
          controller: _controller,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Text(items[index]);
          },
        ),
      ),
    );
  }
}
