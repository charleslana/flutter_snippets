import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AppBarWithTab extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final TabController tabController;

  const AppBarWithTab({
    Key? key,
    required this.title,
    required this.tabController,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(130);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      bottom: TabBar(
        controller: tabController,
        tabs: [
          Tab(
            icon: Icon(Icons.visibility),
            text: AppLocalizations.of(context)!.tabBarTitleExample,
          ),
          Tab(
            icon: Icon(Icons.code),
            text: AppLocalizations.of(context)!.tabBarTitleCode,
          ),
        ],
      ),
    );
  }
}
