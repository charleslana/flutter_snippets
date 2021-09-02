import 'package:flutter/material.dart';

class SnippetBottomNavigationBar extends StatefulWidget {
  const SnippetBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _SnippetBottomNavigationBarState createState() =>
      _SnippetBottomNavigationBarState();
}

class _SnippetBottomNavigationBarState
    extends State<SnippetBottomNavigationBar> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = const [
    Text(
      'Home page',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
    Text(
      'Course page',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
    Text(
      'Mail page',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: 'Mail',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
