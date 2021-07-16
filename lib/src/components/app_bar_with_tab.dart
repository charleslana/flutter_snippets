import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/constants/app_constants.dart';
import 'package:flutter_snippets/src/widgets/list_icons_app_bar_widget.dart';

class AppBarWithTab extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final TabController tabController;

  const AppBarWithTab({
    Key? key,
    required this.text,
    required this.tabController,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(130);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(text),
      actions: ListIconsAppBarWidget().listWidgets,
      bottom: TabBar(
        controller: tabController,
        tabs: [
          Tab(
            icon: Icon(Icons.visibility),
            text: AppConstants.TEXT_BAR_WITH_BAR_EXAMPLE,
          ),
          Tab(
            icon: Icon(Icons.code),
            text: AppConstants.TEXT_BAR_WITH_BAR_CODE,
          ),
        ],
      ),
    );
  }
}
