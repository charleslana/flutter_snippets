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
      appBar: AppBar(
        title: Text('Mova os itens para baixo'),
        automaticallyImplyLeading: false,
      ),
      body: RefreshIndicator(
        onRefresh: _onRefresh,
        child: ListView(
          padding: EdgeInsets.all(8.0),
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          children: _listData.map((i) {
            return ListTile(
              title: Text('Item $i'),
            );
          }).toList(),
        ),
      ),
    );
  }
}
