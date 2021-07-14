import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/constants/app_constants.dart';
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
          currentRoute != AppRoutes.SNIPPET_BASIC
              ? Navigator.of(context).pushNamed(AppRoutes.SNIPPET_BASIC)
              : null;
          break;
        case 1:
          currentRoute != AppRoutes.SNIPPET_ADVANCED
              ? Navigator.of(context).pushNamed(AppRoutes.SNIPPET_ADVANCED)
              : null;
          break;
        case 2:
          currentRoute != AppRoutes.SNIPPET_WIDGETS
              ? Navigator.of(context).pushNamed(AppRoutes.SNIPPET_WIDGETS)
              : null;
          break;
        case 3:
          currentRoute != AppRoutes.SNIPPET_ANIMATIONS
              ? Navigator.of(context).pushNamed(AppRoutes.SNIPPET_ANIMATIONS)
              : null;
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
        BottomNavigationBarItem(
          icon: Icon(Icons.description),
          label: AppConstants.BOTTOM_NAVIGATION_BAR_BASIC,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: AppConstants.BOTTOM_NAVIGATION_BAR_ADVANCED,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.widgets),
          label: AppConstants.BOTTOM_NAVIGATION_BAR_WIDGETS,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.animation),
          label: AppConstants.BOTTOM_NAVIGATION_BAR_ANIMATIONS,
        ),
      ],
    );
  }
}
