import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/routes/app_routes.dart';

class AppCustomBar extends StatelessWidget with PreferredSizeWidget {
  const AppCustomBar({
    required this.title,
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    final currentRoute = ModalRoute.of(context)!.settings.name;

    return AppBar(
      title: Text(title),
      backgroundColor: Colors.indigo,
      actions: [
        IconButton(
          icon: const Icon(
            Icons.settings,
          ),
          onPressed: () => currentRoute != AppRoutes.appSettings
              ? Navigator.of(context).pushNamed(AppRoutes.appSettings)
              : null,
        ),
      ],
    );
  }
}
