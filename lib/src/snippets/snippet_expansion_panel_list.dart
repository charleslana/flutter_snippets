import 'package:flutter/material.dart';

class SnippetExpansionPanelList extends StatefulWidget {
  const SnippetExpansionPanelList({Key? key}) : super(key: key);

  @override
  _SnippetExpansionPanelListState createState() =>
      _SnippetExpansionPanelListState();
}

class _SnippetExpansionPanelListState extends State<SnippetExpansionPanelList> {
  List<SnippetExpansionPanelListItem> _generateItems(int numberOfItems) {
    return List<SnippetExpansionPanelListItem>.generate(numberOfItems,
        (int index) {
      return SnippetExpansionPanelListItem(
        headerValue: 'Panel $index',
        expandedValue: 'Item $index',
      );
    });
  }

  late final List<SnippetExpansionPanelListItem> _data = _generateItems(8);

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((SnippetExpansionPanelListItem item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: ListTile(
              title: Text(item.expandedValue),
              subtitle: const Text('Tap to delete'),
              trailing: const Icon(Icons.delete),
              onTap: () {
                setState(() {
                  _data.removeWhere(
                      (SnippetExpansionPanelListItem currentItem) =>
                          item == currentItem);
                });
              }),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: _buildPanel(),
        ),
      ),
    );
  }
}

class SnippetExpansionPanelListItem {
  SnippetExpansionPanelListItem({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}
