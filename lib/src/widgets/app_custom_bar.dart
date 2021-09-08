import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/utils/app_utils.dart';

class AppCustomBar extends StatelessWidget implements PreferredSizeWidget {
  const AppCustomBar({
    required this.title,
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    final String? currentRoute = ModalRoute.of(context)!.settings.name;

    return AppBar(
      title: Text(title),
      backgroundColor: Colors.indigo,
      actions: [
        IconButton(
          icon: const Icon(
            Icons.settings,
          ),
          onPressed: () =>
              AppUtils().navigateToScreen(context, 3, currentRoute),
        ),
      ],
    );
  }
}
