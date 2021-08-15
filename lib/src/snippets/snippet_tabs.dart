import 'package:flutter/material.dart';

class SnippetTabs extends StatefulWidget {
  const SnippetTabs({Key? key}) : super(key: key);

  @override
  _SnippetTabsState createState() => _SnippetTabsState();
}

class _SnippetTabsState extends State<SnippetTabs>
    with TickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        bottom: TabBar(
          controller: _controller,
          tabs: const [
            Tab(
              text: 'First',
            ),
            Tab(
              text: 'Second',
            ),
            Tab(
              text: 'Third',
            ),
          ],
        ),
        title: const Text('Tabs'),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Container(
            color: Colors.deepOrangeAccent,
            child: const Center(
              child: Text(
                'First tab',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.blueGrey,
            child: const Center(
              child: Text(
                'Second tab',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.teal,
            child: const Center(
              child: Text(
                'Third tab',
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
