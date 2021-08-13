import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/utils/app_utils.dart';

class AppFloatingActionButton extends StatelessWidget {
  const AppFloatingActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentRoute = ModalRoute.of(context)!.settings.name;

    return FloatingActionButton.extended(
      backgroundColor: Colors.purple,
      onPressed: () => AppUtils.navigateToScreen(1, context, currentRoute),
      icon: Icon(
        Icons.widgets,
        color: Colors.white,
      ),
      label: Text(
        'Widgets',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
