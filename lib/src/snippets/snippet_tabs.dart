import 'package:flutter/material.dart';

class SnippetTabs extends StatefulWidget {
  const SnippetTabs({Key? key}) : super(key: key);

  @override
  _SnippetTabsState createState() => _SnippetTabsState();
}

class _SnippetTabsState extends State<SnippetTabs>
    with TickerProviderStateMixin {
  late TabController _tabController;

  final List<Tab> _tabs = const [
    Tab(icon: Icon(Icons.looks_one), child: Text('Tab One')),
    Tab(icon: Icon(Icons.looks_two), text: 'Tab Two'),
    Tab(icon: Icon(Icons.looks_3), text: 'Tab Three'),
    Tab(icon: Icon(Icons.looks_4), text: 'Tab Four'),
    Tab(icon: Icon(Icons.looks_5), text: 'Tab Five'),
    Tab(icon: Icon(Icons.looks_6), text: 'Tab Six'),
  ];

  final List<Widget> _views = const [
    Center(child: Text('Content of Tab One')),
    Center(child: Text('Content of Tab Two')),
    Center(child: Text('Content of Tab Three')),
    Center(child: Text('Content of Tab Four')),
    Center(child: Text('Content of Tab Five')),
    Center(child: Text('Content of Tab Six')),
  ];

  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this);
    _tabController.animateTo(2);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'TabBar',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.grey[200],
        bottom: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
          labelStyle: const TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: const TextStyle(fontStyle: FontStyle.italic),
          overlayColor:
              MaterialStateColor.resolveWith((Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.white;
            }
            if (states.contains(MaterialState.focused)) {
              return Colors.orange;
            } else if (states.contains(MaterialState.hovered)) {
              return Colors.deepPurple;
            }

            return Colors.transparent;
          }),
          indicatorWeight: 10,
          indicatorColor: Colors.deepPurple,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorPadding: const EdgeInsets.all(5),
          indicator: BoxDecoration(
            border: Border.all(color: Colors.deepPurple),
            borderRadius: BorderRadius.circular(10),
            color: Colors.deepPurple,
          ),
          isScrollable: true,
          physics: const BouncingScrollPhysics(),
          onTap: (int index) {},
          enableFeedback: true,
          controller: _tabController,
          tabs: _tabs,
        ),
      ),
      body: TabBarView(
        physics: const BouncingScrollPhysics(),
        controller: _tabController,
        children: _views,
      ),
    );
  }
}
