import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/utils/app_utils.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String? currentRoute = ModalRoute.of(context)!.settings.name;

    return BottomAppBar(
      color: Colors.indigo,
      notchMargin: 6,
      shape: const AutomaticNotchedShape(
        RoundedRectangleBorder(),
        StadiumBorder(
          side: BorderSide(),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(
                Icons.keyboard_arrow_left,
                color: Colors.white,
              ),
              onPressed: () =>
                  AppUtils().navigateToScreen(context, 0, currentRoute),
            ),
            IconButton(
              icon: const Icon(
                Icons.keyboard_arrow_right,
                color: Colors.white,
              ),
              onPressed: () =>
                  AppUtils().navigateToScreen(context, 2, currentRoute),
            ),
          ],
        ),
      ),
    );
  }
}
