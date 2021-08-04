import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/components/app_bottom_navigation_bar0.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_snippets/src/components/app_floating_action_bar.dart';
import 'package:flutter_snippets/src/components/app_menu.dart';
import 'package:flutter_snippets/src/constants/app_constants.dart';
import 'package:flutter_snippets/src/models/snippet_show_model.dart';
import 'package:flutter_snippets/src/routes/app_routes.dart';
import 'package:flutter_snippets/src/snippets/snippet_animated_container.dart';
import 'package:flutter_snippets/src/snippets/snippet_animated_cross_fade.dart';
import 'package:flutter_snippets/src/snippets/snippet_animated_default_text_style.dart';
import 'package:flutter_snippets/src/snippets/snippet_animated_image.dart';
import 'package:flutter_snippets/src/snippets/snippet_animated_opacity.dart';
import 'package:flutter_snippets/src/snippets/snippet_animated_switcher.dart';
import 'package:flutter_snippets/src/snippets/snippet_animation_icon.dart';
import 'package:flutter_snippets/src/snippets/snippet_custom_paint.dart';
import 'package:flutter_snippets/src/snippets/snippet_draggable_scrollable_sheet.dart';
import 'package:flutter_snippets/src/snippets/snippet_fade_in_image.dart';
import 'package:flutter_snippets/src/snippets/snippet_fade_transition.dart';
import 'package:flutter_snippets/src/snippets/snippet_hero.dart';
import 'package:flutter_snippets/src/snippets/snippet_matrix.dart';
import 'package:flutter_snippets/src/snippets/snippet_rotating_circle.dart';
import 'package:flutter_snippets/src/snippets/snippet_transform.dart';
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
          child: Stack(
            children: [
              ListView(
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
                    text: AppLocalizations.of(context)!
                        .menuAnimationAnimationIcon,
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
                        tip: AppLocalizations.of(context)!.tipAnimatedContainer,
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
                        tip: AppLocalizations.of(context)!.tipAnimatedCrossFade,
                      ),
                    ),
                  ),
                  AppMenu(
                    text: AppLocalizations.of(context)!
                        .menuAnimationAnimatedOpacity,
                    icon: Icons.opacity,
                    onPressed: () => Navigator.of(context).pushNamed(
                      AppRoutes.snippetShow,
                      arguments: SnippetShowModel(
                        data: AppConstants.txtSnippetWidgetAnimatedOpacity,
                        title: AppLocalizations.of(context)!
                            .menuAnimationAnimatedOpacity,
                        bottomNavigationBarIndex: 3,
                        widget: SnippetAnimatedOpacity(),
                        tip: AppLocalizations.of(context)!.tipAnimatedOpacity,
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
                        data: AppConstants
                            .txtSnippetWidgetAnimatedDefaultTextStyle,
                        title: AppLocalizations.of(context)!
                            .menuAnimationAnimatedDefaultTextStyle,
                        bottomNavigationBarIndex: 3,
                        widget: SnippetAnimatedDefaultTextStyle(),
                        tip: AppLocalizations.of(context)!
                            .tipAnimatedDefaultTextStyle,
                      ),
                    ),
                  ),
                  AppMenu(
                    text:
                        AppLocalizations.of(context)!.menuAnimationCustomPaint,
                    icon: Icons.brush,
                    onPressed: () => Navigator.of(context).pushNamed(
                      AppRoutes.snippetShow,
                      arguments: SnippetShowModel(
                        data: AppConstants.txtSnippetWidgetCustomPaint,
                        title: AppLocalizations.of(context)!
                            .menuAnimationCustomPaint,
                        bottomNavigationBarIndex: 3,
                        widget: SnippetCustomPaint(),
                        tip: AppLocalizations.of(context)!.tipCustomPaint,
                      ),
                    ),
                  ),
                  AppMenu(
                    text: AppLocalizations.of(context)!
                        .menuAnimationRotatingCircle,
                    icon: Icons.circle,
                    onPressed: () => Navigator.of(context).pushNamed(
                      AppRoutes.snippetShow,
                      arguments: SnippetShowModel(
                        data: AppConstants.txtSnippetWidgetRotatingCircle,
                        title: AppLocalizations.of(context)!
                            .menuAnimationRotatingCircle,
                        bottomNavigationBarIndex: 3,
                        widget: SnippetRotatingCircle(),
                      ),
                    ),
                  ),
                  AppMenu(
                    text: AppLocalizations.of(context)!.menuAnimationTransform,
                    icon: Icons.transform,
                    onPressed: () => Navigator.of(context).pushNamed(
                      AppRoutes.snippetShow,
                      arguments: SnippetShowModel(
                        data: AppConstants.txtSnippetWidgetTransform,
                        title: AppLocalizations.of(context)!
                            .menuAnimationTransform,
                        bottomNavigationBarIndex: 3,
                        widget: SnippetTransform(),
                        tip: AppLocalizations.of(context)!.tipTransform,
                      ),
                    ),
                  ),
                  AppMenu(
                    text: AppLocalizations.of(context)!.menuAnimationMatrix,
                    icon: Icons.view_in_ar,
                    onPressed: () => Navigator.of(context).pushNamed(
                      AppRoutes.snippetShow,
                      arguments: SnippetShowModel(
                        data: AppConstants.txtSnippetWidgetMatrix,
                        title:
                            AppLocalizations.of(context)!.menuAnimationMatrix,
                        bottomNavigationBarIndex: 3,
                        widget: SnippetMatrix(),
                      ),
                    ),
                  ),
                  AppMenu(
                    text: AppLocalizations.of(context)!
                        .menuAnimationDraggableScrollableSheet,
                    icon: Icons.drag_handle,
                    onPressed: () => Navigator.of(context).pushNamed(
                      AppRoutes.snippetShow,
                      arguments: SnippetShowModel(
                        data: AppConstants
                            .txtSnippetWidgetDraggableScrollableSheet,
                        title: AppLocalizations.of(context)!
                            .menuAnimationDraggableScrollableSheet,
                        bottomNavigationBarIndex: 3,
                        widget: SnippetDraggableScrollableSheet(),
                        tip: AppLocalizations.of(context)!
                            .tipDraggableScrollableSheet,
                      ),
                    ),
                  ),
                  AppMenu(
                    text: AppLocalizations.of(context)!
                        .menuAnimationAnimatedImage,
                    icon: Icons.auto_awesome_motion,
                    onPressed: () => Navigator.of(context).pushNamed(
                      AppRoutes.snippetShow,
                      arguments: SnippetShowModel(
                        data: AppConstants.txtSnippetWidgetAnimatedImage,
                        title: AppLocalizations.of(context)!
                            .menuAnimationAnimatedImage,
                        bottomNavigationBarIndex: 3,
                        widget: SnippetAnimatedImage(),
                      ),
                    ),
                  ),
                  AppMenu(
                    text: AppLocalizations.of(context)!.menuAnimationHero,
                    icon: Icons.published_with_changes,
                    onPressed: () => Navigator.of(context).pushNamed(
                      AppRoutes.snippetShow,
                      arguments: SnippetShowModel(
                        data: AppConstants.txtSnippetWidgetHero,
                        title: AppLocalizations.of(context)!.menuAnimationHero,
                        bottomNavigationBarIndex: 3,
                        widget: SnippetHero(),
                      ),
                    ),
                  ),
                  AppMenu(
                    text:
                        AppLocalizations.of(context)!.menuAnimationFadeInImage,
                    icon: Icons.filter_none,
                    onPressed: () => Navigator.of(context).pushNamed(
                      AppRoutes.snippetShow,
                      arguments: SnippetShowModel(
                        data: AppConstants.txtSnippetWidgetFadeInImage,
                        title: AppLocalizations.of(context)!
                            .menuAnimationFadeInImage,
                        bottomNavigationBarIndex: 3,
                        widget: SnippetFadeInImage(),
                        tip: AppLocalizations.of(context)!.tipFadeInImage,
                      ),
                    ),
                  ),
                  AppMenu(
                    text: AppLocalizations.of(context)!
                        .menuAnimationFadeTransition,
                    icon: Icons.motion_photos_on,
                    onPressed: () => Navigator.of(context).pushNamed(
                      AppRoutes.snippetShow,
                      arguments: SnippetShowModel(
                        data: AppConstants.txtSnippetWidgetFadeTransition,
                        title: AppLocalizations.of(context)!
                            .menuAnimationFadeTransition,
                        bottomNavigationBarIndex: 3,
                        widget: SnippetFadeTransition(),
                        tip: AppLocalizations.of(context)!.tipFadeTransition,
                      ),
                    ),
                  ),
                  AppMenu(
                    text: AppLocalizations.of(context)!
                        .menuAnimationAnimatedSwitcher,
                    icon: Icons.filter_9_plus,
                    onPressed: () => Navigator.of(context).pushNamed(
                      AppRoutes.snippetShow,
                      arguments: SnippetShowModel(
                        data: AppConstants.txtSnippetWidgetAnimatedSwitcher,
                        title: AppLocalizations.of(context)!
                            .menuAnimationAnimatedSwitcher,
                        bottomNavigationBarIndex: 3,
                        widget: SnippetAnimatedSwitcher(),
                        tip: AppLocalizations.of(context)!.tipAnimatedSwitcher,
                      ),
                    ),
                  ),
                ],
              ),
              AppFloatinActionBar(),
            ],
          ),
        ),
        bottomNavigationBar: AppBottomNavigationBar0(
          index: 3,
        ),
      ),
    );
  }
}
