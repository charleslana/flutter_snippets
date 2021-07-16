import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/routes/app_routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
          currentRoute != AppRoutes.snippetBasic
              ? Navigator.of(context).pushNamed(AppRoutes.snippetBasic)
              : null;
          break;
        case 1:
          currentRoute != AppRoutes.snippetAdvanced
              ? Navigator.of(context).pushNamed(AppRoutes.snippetAdvanced)
              : null;
          break;
        case 2:
          currentRoute != AppRoutes.snippetWidgets
              ? Navigator.of(context).pushNamed(AppRoutes.snippetWidgets)
              : null;
          break;
        case 3:
          currentRoute != AppRoutes.snippetAnimations
              ? Navigator.of(context).pushNamed(AppRoutes.snippetAnimations)
              : null;
          break;
        default:
          Navigator.of(context).pushNamed(AppRoutes.snippetBasic);
      }
    }

    return BottomNavigationBar(
      currentIndex: index,
      onTap: (int index) => _navigateToScreens(index),
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.description),
          label: AppLocalizations.of(context)!.bottomNavigationBarBasic,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: AppLocalizations.of(context)!.bottomNavigationBarAdvanced,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.widgets),
          label: AppLocalizations.of(context)!.bottomNavigationBarWidget,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.animation),
          label: AppLocalizations.of(context)!.bottomNavigationBarAnimations,
        ),
      ],
    );
  }
}
