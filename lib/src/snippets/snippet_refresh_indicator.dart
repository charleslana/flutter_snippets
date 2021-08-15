import 'package:flutter/material.dart';

class SnippetRefreshIndicator extends StatefulWidget {
  const SnippetRefreshIndicator({Key? key}) : super(key: key);

  @override
  _SnippetRefreshIndicatorState createState() =>
      _SnippetRefreshIndicatorState();
}

class _SnippetRefreshIndicatorState extends State<SnippetRefreshIndicator> {
  List<int> _listData = [1, 2, 3];

  Future<void> _onRefresh() async {
    setState(() {
      _listData = [1, 2, 3, 4, 5];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: _onRefresh,
        child: ListView(
          padding: const EdgeInsets.all(8),
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          children: _listData.map((index) {
            return ListTile(
              title: Text('Item $index'),
            );
          }).toList(),
        ),
      ),
    );
  }
}
