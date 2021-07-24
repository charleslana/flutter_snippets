import 'package:flutter/material.dart';

class SnippetTabs extends StatefulWidget {
  const SnippetTabs({Key? key}) : super(key: key);

  @override
  _SnippetTabsState createState() => _SnippetTabsState();
}

class _SnippetTabsState extends State<SnippetTabs>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              text: 'Primeiro',
            ),
            Tab(
              text: 'Segundo',
            ),
            Tab(
              text: 'Terceiro',
            ),
          ],
        ),
        title: Text('Abas'),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Container(
            color: Colors.deepOrangeAccent,
            child: Center(
              child: Text(
                'Primeira aba',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.blueGrey,
            child: Center(
              child: Text(
                'Segunda aba',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.teal,
            child: Center(
              child: Text(
                'Terceira aba',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
