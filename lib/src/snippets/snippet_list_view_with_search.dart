import 'package:flutter/material.dart';

class SnippetListViewWithSearch extends StatefulWidget {
  const SnippetListViewWithSearch({Key? key}) : super(key: key);

  @override
  _SnippetListViewWithSearchState createState() =>
      _SnippetListViewWithSearchState();
}

class _SnippetListViewWithSearchState extends State<SnippetListViewWithSearch> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _duplicateItems =
      List<String>.generate(50, (index) => 'Item $index');
  final List<String> _items = [];

  @override
  void initState() {
    _items.addAll(_duplicateItems);
    super.initState();
  }

  void _filterSearchResults(String query) {
    final List<String> dummySearchList = [..._duplicateItems];

    if (query.isNotEmpty) {
      final List<String> dummyListData = [];

      for (final item in dummySearchList) {
        if (item.contains(query)) {
          dummyListData.add(item);
        }
      }

      setState(() {
        _items
          ..clear()
          ..addAll(dummyListData);
      });

      return;
    } else {
      setState(() {
        _items
          ..clear()
          ..addAll(_duplicateItems);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              onChanged: _filterSearchResults,
              controller: _controller,
              decoration: const InputDecoration(
                labelText: 'Search',
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: _items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_items[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
