import 'package:flutter/material.dart';

class SnippetSilverAppBar extends StatelessWidget {
  const SnippetSilverAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            automaticallyImplyLeading: false,
            title: const Text('SliverAppBar'),
            backgroundColor: Colors.green,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(color: Colors.brown),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 150,
            delegate: SliverChildListDelegate(
              [
                Container(color: Colors.red),
                Container(color: Colors.purple),
                Container(color: Colors.green),
                Container(color: Colors.orange),
                Container(color: Colors.yellow),
                Container(color: Colors.pink),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
