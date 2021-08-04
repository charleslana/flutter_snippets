import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/routes/app_routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AppBottomNavigationBar0 extends StatelessWidget {
  final int index;
  const AppBottomNavigationBar0({
    required this.index,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentRoute = ModalRoute.of(context)!.settings.name;

    void navigateToScreens(int index) {
      switch (index) {
        case 0:
          currentRoute != AppRoutes.snippetBasic
              ? Navigator.of(context)
                  .pushReplacementNamed(AppRoutes.snippetBasic)
              : null;
          break;
        case 1:
          currentRoute != AppRoutes.snippetAdvanced
              ? Navigator.of(context)
                  .pushReplacementNamed(AppRoutes.snippetAdvanced)
              : null;
          break;
        case 2:
          currentRoute != AppRoutes.snippetWidgets
              ? Navigator.of(context)
                  .pushReplacementNamed(AppRoutes.snippetWidgets)
              : null;
          break;
        case 3:
          currentRoute != AppRoutes.snippetAnimations
              ? Navigator.of(context)
                  .pushReplacementNamed(AppRoutes.snippetAnimations)
              : null;
          break;
        default:
          Navigator.of(context).pushReplacementNamed(AppRoutes.snippetBasic);
      }
    }

    return BottomNavigationBar(
      currentIndex: index,
      onTap: (int index) => navigateToScreens(index),
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
