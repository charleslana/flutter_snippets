import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/routes/app_routes.dart';

class AppCustomBar extends StatelessWidget with PreferredSizeWidget {
  final String title;

  const AppCustomBar({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: Colors.indigo,
      actions: [
        IconButton(
          icon: Icon(
            Icons.settings,
          ),
          onPressed: () =>
              Navigator.of(context).pushNamed(AppRoutes.appSettings),
        ),
      ],
    );
  }
}
