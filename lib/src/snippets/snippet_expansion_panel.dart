import 'package:flutter/material.dart';

class SnippetExpansionPanel extends StatefulWidget {
  const SnippetExpansionPanel({Key? key}) : super(key: key);

  @override
  _SnippetExpansionPanelState createState() => _SnippetExpansionPanelState();
}

class _SnippetExpansionPanelState extends State<SnippetExpansionPanel> {
  final List<SnippetExpansionPanelItemModel> _itemData = [
    SnippetExpansionPanelItemModel(
      title: 'Android',
      description: '''
        Android is a mobile operating system based on a modified version
        of the Linux kernel and other open source software, designed primarily
        for touchscreen mobile devices such as smartphones and tablets.
        ...Some well known derivatives include Android TV for televisions
        and Wear OS for wearables, both developed by Google.
        ''',
      color: Colors.green,
      icon: Icons.android,
      expanded: true,
    ),
    SnippetExpansionPanelItemModel(
      title: 'Apple',
      description: '''
        Apple Inc. is an American multinational company that aims to design
        and market consumer electronics, computer software and personal computers.
        ''',
      color: Colors.blue,
      icon: Icons.phone_iphone,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: _itemData.length,
          itemBuilder: (BuildContext context, int index) {
            return ExpansionPanelList(
              animationDuration: const Duration(milliseconds: 400),
              dividerColor: Colors.red,
              elevation: 1,
              children: [
                ExpansionPanel(
                  body: Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipOval(
                          child: CircleAvatar(
                            backgroundColor: _itemData[index].color,
                            child: Icon(
                              _itemData[index].icon,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          _itemData[index].description,
                          style: const TextStyle(
                            fontSize: 15,
                            letterSpacing: 0.3,
                            height: 1.3,
                          ),
                        ),
                      ],
                    ),
                  ),
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return Container(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        _itemData[index].title,
                        style: TextStyle(
                          color: _itemData[index].color,
                          fontSize: 18,
                        ),
                      ),
                    );
                  },
                  isExpanded: _itemData[index].expanded,
                ),
              ],
              expansionCallback: (int item, bool status) {
                setState(() {
                  _itemData[index].expanded = !_itemData[index].expanded;
                });
              },
            );
          },
        ),
      ),
    );
  }
}

class SnippetExpansionPanelItemModel {
  SnippetExpansionPanelItemModel({
    this.expanded = false,
    required this.title,
    required this.description,
    required this.color,
    required this.icon,
  });

  bool expanded;
  String title;
  String description;
  Color color;
  IconData icon;
}
