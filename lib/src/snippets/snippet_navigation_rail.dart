import 'package:flutter/material.dart';

class SnippetNavigationRail extends StatefulWidget {
  const SnippetNavigationRail({Key? key}) : super(key: key);

  @override
  _SnippetNavigationRailState createState() => _SnippetNavigationRailState();
}

class _SnippetNavigationRailState extends State<SnippetNavigationRail> {
  int _selectedIndex = 0;

  List<NavigationRailDestination> _buildDestinations() {
    const Icon icon = Icon(Icons.check_circle_outline);

    return [
      const NavigationRailDestination(
        icon: icon,
        label: Text('Menu 1'),
      ),
      const NavigationRailDestination(
        icon: icon,
        label: Text('Menu 2'),
      ),
      const NavigationRailDestination(
        icon: icon,
        label: Text('Menu 3'),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: _selectedIndex,
            destinations: _buildDestinations(),
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
          const VerticalDivider(),
          Expanded(
            child: Center(
              child: Text('Content of Menu $_selectedIndex'),
            ),
          ),
        ],
      ),
    );
  }
}
