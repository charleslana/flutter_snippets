import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/components/app_bottom_navigation_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_snippets/src/components/app_menu.dart';
import 'package:flutter_snippets/src/constants/app_constants.dart';
import 'package:flutter_snippets/src/models/snippet_show_model.dart';
import 'package:flutter_snippets/src/routes/app_routes.dart';
import 'package:flutter_snippets/src/snippets/snippet_animated_container.dart';
import 'package:flutter_snippets/src/snippets/snippet_animated_cross_fade.dart';
import 'package:flutter_snippets/src/snippets/snippet_animated_default_text_style.dart';
import 'package:flutter_snippets/src/snippets/snippet_animated_opacity.dart';
import 'package:flutter_snippets/src/snippets/snippet_animation_icon.dart';
import 'package:flutter_snippets/src/snippets/snippet_custom_paint.dart';
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
              AppMenu(
                text: AppLocalizations.of(context)!
                    .menuAnimationAnimatedContainer,
                icon: Icons.takeout_dining,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetAnimatedContainer,
                    title: AppLocalizations.of(context)!
                        .menuAnimationAnimatedContainer,
                    bottomNavigationBarIndex: 3,
                    widget: SnippetAnimatedContainer(),
                  ),
                ),
              ),
              AppMenu(
                text: AppLocalizations.of(context)!
                    .menuAnimationAnimatedCrossFade,
                icon: Icons.highlight_alt,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetAnimatedCrossFade,
                    title: AppLocalizations.of(context)!
                        .menuAnimationAnimatedCrossFade,
                    bottomNavigationBarIndex: 3,
                    widget: SnippetAnimatedCrossFade(),
                  ),
                ),
              ),
              AppMenu(
                text:
                    AppLocalizations.of(context)!.menuAnimationAnimatedOpacity,
                icon: Icons.opacity,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetAnimatedOpacity,
                    title: AppLocalizations.of(context)!
                        .menuAnimationAnimatedOpacity,
                    bottomNavigationBarIndex: 3,
                    widget: SnippetAnimatedOpacity(),
                  ),
                ),
              ),
              AppMenu(
                text: AppLocalizations.of(context)!
                    .menuAnimationAnimatedDefaultTextStyle,
                icon: Icons.format_size,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetAnimatedDefaultTextStyle,
                    title: AppLocalizations.of(context)!
                        .menuAnimationAnimatedDefaultTextStyle,
                    bottomNavigationBarIndex: 3,
                    widget: SnippetAnimatedDefaultTextStyle(),
                  ),
                ),
              ),
              AppMenu(
                text: AppLocalizations.of(context)!.menuAnimationCustomPaint,
                icon: Icons.brush,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetCustomPaint,
                    title:
                        AppLocalizations.of(context)!.menuAnimationCustomPaint,
                    bottomNavigationBarIndex: 3,
                    widget: SnippetCustomPaint(),
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
