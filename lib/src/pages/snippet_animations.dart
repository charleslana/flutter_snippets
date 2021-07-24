import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/components/app_bottom_navigation_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_snippets/src/components/app_menu.dart';
import 'package:flutter_snippets/src/constants/app_constants.dart';
import 'package:flutter_snippets/src/models/snippet_show_model.dart';
import 'package:flutter_snippets/src/routes/app_routes.dart';
import 'package:flutter_snippets/src/snippets/snippet_animation_icon.dart';
import 'package:flutter_snippets/src/widgets/list_icons_app_bar_widget.dart';

class SnippetAnimations extends StatelessWidget {
  const SnippetAnimations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.appBarTitleAnimations),
          actions: ListIconsAppBarWidget().listWidgets,
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  AppLocalizations.of(context)!.menuAnimation,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ),
              ),
              AppMenu(
                text: AppLocalizations.of(context)!.menuAnimationAnimationIcon,
                icon: Icons.play_arrow,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetAnimationIcon,
                    title: AppLocalizations.of(context)!
                        .menuAnimationAnimationIcon,
                    bottomNavigationBarIndex: 3,
                    widget: SnippetAnimationIcon(),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: AppBottomNavigationBar(
          index: 3,
        ),
      ),
    );
  }
}
