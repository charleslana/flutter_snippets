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
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = [
    Text(
      'Home page',
      style: optionStyle,
    ),
    Text(
      'Course page',
      style: optionStyle,
    ),
    Text(
      'Contact page',
      style: optionStyle,
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
        items: <BottomNavigationBarItem>[
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
