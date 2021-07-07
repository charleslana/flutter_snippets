import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/routes/app_routes.dart';

class AppBottomNavigationBar extends StatelessWidget {
  final int index;
  const AppBottomNavigationBar({
    required this.index,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentRoute = ModalRoute.of(context)!.settings.name;

    void _navigateToScreens(int index) {
      switch (index) {
        case 0:
          Navigator.of(context).pushNamed(
              currentRoute == AppRoutes.SNIPPET_BASIC
                  ? ''
                  : AppRoutes.SNIPPET_BASIC);
          break;
        case 1:
          Navigator.of(context).pushNamed(
              currentRoute == AppRoutes.SNIPPET_ADVANCED
                  ? ''
                  : AppRoutes.SNIPPET_ADVANCED);
          break;
        case 2:
          Navigator.of(context).pushNamed(
              currentRoute == AppRoutes.SNIPPET_WIDGETS
                  ? ''
                  : AppRoutes.SNIPPET_WIDGETS);
          break;
        case 3:
          Navigator.of(context).pushNamed(
              currentRoute == AppRoutes.SNIPPET_ANIMATIONS
                  ? ''
                  : AppRoutes.SNIPPET_ANIMATIONS);
          break;
        default:
          Navigator.of(context).pushNamed(AppRoutes.SNIPPET_BASIC);
      }
    }

    return BottomNavigationBar(
      currentIndex: index,
      onTap: (int index) => _navigateToScreens(index),
      backgroundColor: Colors.white,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.description), label: 'Básico'),
        BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Avançado'),
        BottomNavigationBarItem(icon: Icon(Icons.widgets), label: 'Widgets'),
        BottomNavigationBarItem(
            icon: Icon(Icons.animation), label: 'Animações'),
      ],
    );
  }
}
