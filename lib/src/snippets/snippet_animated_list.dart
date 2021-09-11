import 'dart:math';

import 'package:flutter/material.dart';

class SnippetAnimatedList extends StatefulWidget {
  const SnippetAnimatedList({Key? key}) : super(key: key);

  @override
  _SnippetAnimatedListState createState() => _SnippetAnimatedListState();
}

class _SnippetAnimatedListState extends State<SnippetAnimatedList> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();

  final List<String> _data = [
    'Flutter',
    'Dart',
    'Developer',
  ];

  String _generateRandomString(int length) => String.fromCharCodes(
      List.generate(length, (index) => Random().nextInt(33) + 89));

  void _addAnItem() {
    _data.insert(0, _generateRandomString(10));
    _listKey.currentState?.insertItem(0);
  }

  void _removeLastItem() {
    final String itemToRemove = _data[0];

    _listKey.currentState?.removeItem(
      0,
      (BuildContext context, Animation<double> animation) =>
          _buildItem(context, itemToRemove, animation),
      duration: const Duration(milliseconds: 250),
    );

    _data.removeAt(0);
  }

  void _removeAllItems() {
    final int itemCount = _data.length;

    for (var i = 0; i < itemCount; i++) {
      final String itemToRemove = _data[0];
      _listKey.currentState?.removeItem(
        0,
        (BuildContext context, Animation<double> animation) =>
            _buildItem(context, itemToRemove, animation),
        duration: const Duration(milliseconds: 250),
      );

      _data.removeAt(0);
    }
  }

  Widget _buildItem(
      BuildContext context, String item, Animation<double> animation) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: SizeTransition(
        sizeFactor: animation,
        child: SizedBox(
          height: 50,
          child: Card(
            child: Center(
              child: Text(
                item,
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterButtons: [
        ElevatedButton(
          onPressed: _addAnItem,
          child: const Text(
            'Add',
          ),
        ),
        ElevatedButton(
          onPressed: _removeLastItem,
          child: const Text(
            'Remove',
          ),
        ),
        ElevatedButton(
          onPressed: _removeAllItems,
          child: const Text(
            'Remove all',
          ),
        ),
      ],
      body: AnimatedList(
        key: _listKey,
        initialItemCount: _data.length,
        itemBuilder: (context, index, animation) =>
            _buildItem(context, _data[index], animation),
      ),
    );
  }
}
