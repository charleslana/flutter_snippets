import 'package:flutter/material.dart';

class SnippetListViewWithSearch extends StatefulWidget {
  const SnippetListViewWithSearch({Key? key}) : super(key: key);

  @override
  _SnippetListViewWithSearchState createState() =>
      _SnippetListViewWithSearchState();
}

class _SnippetListViewWithSearchState extends State<SnippetListViewWithSearch> {
  TextEditingController editingController = TextEditingController();

  final _duplicateItems = List<String>.generate(50, (i) => 'Item $i');
  final List<String> _items = [];

  @override
  void initState() {
    _items.addAll(_duplicateItems);
    super.initState();
  }

  void _filterSearchResults(String query) {
    List<String> dummySearchList = [];

    dummySearchList.addAll(_duplicateItems);

    if (query.isNotEmpty) {
      List<String> dummyListData = [];

      dummySearchList.forEach((item) {
        if (item.contains(query)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        _items.clear();
        _items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        _items.clear();
        _items.addAll(_duplicateItems);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView with Search'),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  _filterSearchResults(value);
                },
                controller: editingController,
                decoration: InputDecoration(
                  labelText: 'Search',
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
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
                    title: Text('${_items[index]}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
