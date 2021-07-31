import 'package:flutter/material.dart';

class SnippetIndexedStack extends StatefulWidget {
  const SnippetIndexedStack({Key? key}) : super(key: key);

  @override
  _SnippetIndexedStackState createState() => _SnippetIndexedStackState();
}

class _SnippetIndexedStackState extends State<SnippetIndexedStack>
    with TickerProviderStateMixin {
  late TabController _tabController;
  int _tabIndex = 0;
  final List<Widget> _myTabs = [
    Tab(text: 'World 1'),
    Tab(text: 'World 2'),
    Tab(text: 'World 3'),
  ];

  void _handleTabSelection() {
    if (!_tabController.indexIsChanging) {
      setState(() {
        _tabIndex = _tabController.index;
      });
    }
  }

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IndexedStack(
          index: _tabIndex,
          children: [
            Text('Hello World 1'),
            Text('Hello World 2'),
            Text('Hello World 3'),
          ],
        ),
      ),
      bottomNavigationBar: TabBar(
        controller: _tabController,
        labelColor: Colors.grey,
        isScrollable: true,
        tabs: _myTabs,
      ),
    );
  }
}
