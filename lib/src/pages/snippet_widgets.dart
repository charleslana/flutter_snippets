import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/components/app_bottom_navigation_bar.dart';
import 'package:flutter_snippets/src/components/app_floating_action_bar.dart';
import 'package:flutter_snippets/src/components/app_menu.dart';
import 'package:flutter_snippets/src/constants/app_constants.dart';
import 'package:flutter_snippets/src/models/snippet_filter_list_model.dart';
import 'package:flutter_snippets/src/models/snippet_filter_model.dart';
import 'package:flutter_snippets/src/models/snippet_show_model.dart';
import 'package:flutter_snippets/src/pages/snippet_container.dart';
import 'package:flutter_snippets/src/routes/app_routes.dart';
import 'package:flutter_snippets/src/snippets/snippet_absorb_pointer.dart';
import 'package:flutter_snippets/src/snippets/snippet_align.dart';
import 'package:flutter_snippets/src/snippets/snippet_aspect_ratio.dart';
import 'package:flutter_snippets/src/snippets/snippet_banner.dart';
import 'package:flutter_snippets/src/snippets/snippet_border_radius.dart';
import 'package:flutter_snippets/src/snippets/snippet_bottom_navigation_bar.dart';
import 'package:flutter_snippets/src/snippets/snippet_bottom_sheet.dart';
import 'package:flutter_snippets/src/snippets/snippet_box_decoration.dart';
import 'package:flutter_snippets/src/snippets/snippet_box_shadow.dart';
import 'package:flutter_snippets/src/snippets/snippet_card.dart';
import 'package:flutter_snippets/src/snippets/snippet_checkbox.dart';
import 'package:flutter_snippets/src/snippets/snippet_checkbox_list_tile.dart';
import 'package:flutter_snippets/src/snippets/snippet_chip.dart';
import 'package:flutter_snippets/src/snippets/snippet_circle_avatar.dart';
import 'package:flutter_snippets/src/snippets/snippet_circular_progress_indicator.dart';
import 'package:flutter_snippets/src/snippets/snippet_clip_oval.dart';
import 'package:flutter_snippets/src/snippets/snippet_clip_path.dart';
import 'package:flutter_snippets/src/snippets/snippet_clip_rect.dart';
import 'package:flutter_snippets/src/snippets/snippet_clip_rrect.dart';
import 'package:flutter_snippets/src/snippets/snippet_clipboard.dart';
import 'package:flutter_snippets/src/snippets/snippet_color_filtered.dart';
import 'package:flutter_snippets/src/snippets/snippet_colors.dart';
import 'package:flutter_snippets/src/snippets/snippet_column.dart';
import 'package:flutter_snippets/src/snippets/snippet_constrained_box.dart';
import 'package:flutter_snippets/src/snippets/snippet_container_transform.dart';
import 'package:flutter_snippets/src/snippets/snippet_countdown.dart';
import 'package:flutter_snippets/src/snippets/snippet_data_table.dart';
import 'package:flutter_snippets/src/snippets/snippet_dialog.dart';
import 'package:flutter_snippets/src/snippets/snippet_dismissible.dart';
import 'package:flutter_snippets/src/snippets/snippet_divider.dart';
import 'package:flutter_snippets/src/snippets/snippet_draggable.dart';
import 'package:flutter_snippets/src/snippets/snippet_drawer.dart';
import 'package:flutter_snippets/src/snippets/snippet_dropdown.dart';
import 'package:flutter_snippets/src/snippets/snippet_elevated_button.dart';
import 'package:flutter_snippets/src/snippets/snippet_elevated_button_icon.dart';
import 'package:flutter_snippets/src/snippets/snippet_end_drawer.dart';
import 'package:flutter_snippets/src/snippets/snippet_expanded.dart';
import 'package:flutter_snippets/src/snippets/snippet_expansion_panel.dart';
import 'package:flutter_snippets/src/snippets/snippet_expansion_panel_list.dart';
import 'package:flutter_snippets/src/snippets/snippet_fitted_box.dart';
import 'package:flutter_snippets/src/snippets/snippet_flexible.dart';
import 'package:flutter_snippets/src/snippets/snippet_floating_action_button.dart';
import 'package:flutter_snippets/src/snippets/snippet_flutter_logo.dart';
import 'package:flutter_snippets/src/snippets/snippet_fractionally_sized_box.dart';
import 'package:flutter_snippets/src/snippets/snippet_future_builder.dart';
import 'package:flutter_snippets/src/snippets/snippet_gesture_detector.dart';
import 'package:flutter_snippets/src/snippets/snippet_global_key.dart';
import 'package:flutter_snippets/src/snippets/snippet_grid_view.dart';
import 'package:flutter_snippets/src/snippets/snippet_icon.dart';
import 'package:flutter_snippets/src/snippets/snippet_icon_background.dart';
import 'package:flutter_snippets/src/snippets/snippet_ignore_pointer.dart';
import 'package:flutter_snippets/src/snippets/snippet_image.dart';
import 'package:flutter_snippets/src/snippets/snippet_image_filtered.dart';
import 'package:flutter_snippets/src/snippets/snippet_image_loading_builder.dart';
import 'package:flutter_snippets/src/snippets/snippet_indexed_stack.dart';
import 'package:flutter_snippets/src/snippets/snippet_ink_well.dart';
import 'package:flutter_snippets/src/snippets/snippet_interactive_viewer.dart';
import 'package:flutter_snippets/src/snippets/snippet_layout_builder.dart';
import 'package:flutter_snippets/src/snippets/snippet_limited_box.dart';
import 'package:flutter_snippets/src/snippets/snippet_linear_progress_indicator.dart';
import 'package:flutter_snippets/src/snippets/snippet_list_view.dart';
import 'package:flutter_snippets/src/snippets/snippet_list_view_with_search.dart';
import 'package:flutter_snippets/src/snippets/snippet_list_wheel_scroll_view.dart';
import 'package:flutter_snippets/src/snippets/snippet_load_json.dart';
import 'package:flutter_snippets/src/snippets/snippet_load_txt.dart';
import 'package:flutter_snippets/src/snippets/snippet_media_query.dart';
import 'package:flutter_snippets/src/snippets/snippet_mouse_region.dart';
import 'package:flutter_snippets/src/snippets/snippet_navigator.dart';
import 'package:flutter_snippets/src/snippets/snippet_navigator_with_arguments.dart';
import 'package:flutter_snippets/src/snippets/snippet_opacity.dart';
import 'package:flutter_snippets/src/snippets/snippet_outlined_button.dart';
import 'package:flutter_snippets/src/snippets/snippet_overflow_box.dart';
import 'package:flutter_snippets/src/snippets/snippet_padding.dart';
import 'package:flutter_snippets/src/snippets/snippet_page_route_builder.dart';
import 'package:flutter_snippets/src/snippets/snippet_page_view.dart';
import 'package:flutter_snippets/src/snippets/snippet_paint.dart';
import 'package:flutter_snippets/src/snippets/snippet_placeholder.dart';
import 'package:flutter_snippets/src/snippets/snippet_popup_menu_button.dart';
import 'package:flutter_snippets/src/snippets/snippet_positioned.dart';
import 'package:flutter_snippets/src/snippets/snippet_raw_string.dart';
import 'package:flutter_snippets/src/snippets/snippet_refresh_indicator.dart';
import 'package:flutter_snippets/src/snippets/snippet_rich_text.dart';
import 'package:flutter_snippets/src/snippets/snippet_rotated_box.dart';
import 'package:flutter_snippets/src/snippets/snippet_row.dart';
import 'package:flutter_snippets/src/snippets/snippet_safe_area.dart';
import 'package:flutter_snippets/src/snippets/snippet_scrollbar.dart';
import 'package:flutter_snippets/src/snippets/snippet_selectable_text.dart';
import 'package:flutter_snippets/src/snippets/snippet_send_data_to_screen.dart';
import 'package:flutter_snippets/src/snippets/snippet_shader_mask.dart';
import 'package:flutter_snippets/src/snippets/snippet_silver_app_bar.dart';
import 'package:flutter_snippets/src/snippets/snippet_silver_grid.dart';
import 'package:flutter_snippets/src/snippets/snippet_single_child_scroll_view.dart';
import 'package:flutter_snippets/src/snippets/snippet_sized_box.dart';
import 'package:flutter_snippets/src/snippets/snippet_slider.dart';
import 'package:flutter_snippets/src/snippets/snippet_snack_bar.dart';
import 'package:flutter_snippets/src/snippets/snippet_spacer.dart';
import 'package:flutter_snippets/src/snippets/snippet_stack.dart';
import 'package:flutter_snippets/src/snippets/snippet_stateful.dart';
import 'package:flutter_snippets/src/snippets/snippet_stateless.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_snippets/src/snippets/snippet_stopwatch.dart';
import 'package:flutter_snippets/src/snippets/snippet_switch_list_tile.dart';
import 'package:flutter_snippets/src/snippets/snippet_table.dart';
import 'package:flutter_snippets/src/snippets/snippet_tabs.dart';
import 'package:flutter_snippets/src/snippets/snippet_text.dart';
import 'package:flutter_snippets/src/snippets/snippet_text_button.dart';
import 'package:flutter_snippets/src/snippets/snippet_text_default_style.dart';
import 'package:flutter_snippets/src/snippets/snippet_text_overflow.dart';
import 'package:flutter_snippets/src/snippets/snippet_text_style.dart';
import 'package:flutter_snippets/src/snippets/snippet_tooltip.dart';
import 'package:flutter_snippets/src/snippets/snippet_vertical_divider.dart';
import 'package:flutter_snippets/src/snippets/snippet_visibility.dart';
import 'package:flutter_snippets/src/widgets/list_icons_app_bar_widget.dart';

class SnippetWidgets extends StatelessWidget {
  const SnippetWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.appBarTitleWidget),
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
                      AppLocalizations.of(context)!.menuWidget,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Theme.of(context).iconTheme.color,
                      ),
                    ),
                  ),
                  AppMenu(
                    text: AppLocalizations.of(context)!.menuWidgetCreate,
                    icon: Icons.add,
                    onPressed: () => Navigator.of(context).pushNamed(
                      AppRoutes.snippetFilter,
                      arguments: SnippetFilterModel(
                        title: AppLocalizations.of(context)!.menuWidgetCreate,
                        snippets: [
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetCreateStateless,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetStateless,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetCreateStateless,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetStateless(),
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetCreateStateful,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetStateful,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetCreateStateful,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetStateful(),
                              ),
                            ),
                          ),
                        ],
                        bottomNavigationBarIndex: 2,
                      ),
                    ),
                  ),
                  AppMenu(
                    text: AppLocalizations.of(context)!.menuWidgetBasic,
                    icon: Icons.flip_to_front,
                    onPressed: () => Navigator.of(context).pushNamed(
                      AppRoutes.snippetFilter,
                      arguments: SnippetFilterModel(
                        title: AppLocalizations.of(context)!.menuWidgetBasic,
                        snippets: [
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicSafeArea,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetSafeArea,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicSafeArea,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetSafeArea(),
                                tip: AppLocalizations.of(context)!.tipSafeArea,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicCircularProgressIndicator,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants
                                    .txtSnippetWidgetCircularProgressIndicator,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicCircularProgressIndicator,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetCircularProgressIndicator(),
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicContainer,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetContainer,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicContainer,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetContainer(),
                                tip: AppLocalizations.of(context)!.tipContainer,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicText,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetText,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicText,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetText(),
                                tip: AppLocalizations.of(context)!.tipText,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicTextOverflow,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetTextOverflow,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicTextOverflow,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetTextOverflow(),
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicTextStyle,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetTextStyle,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicTextStyle,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetTextStyle(),
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicTextDefaultStyle,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants
                                    .txtSnippetWidgetTextDefaultStyle,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicTextDefaultStyle,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetTextDefaultStyle(),
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicRichText,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetRichText,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicRichText,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetRichText(),
                                tip: AppLocalizations.of(context)!.tipRichText,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicColumn,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetColumn,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicColumn,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetColumn(),
                                tip: AppLocalizations.of(context)!.tipColumn,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicRow,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetRow,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicRow,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetRow(),
                                tip: AppLocalizations.of(context)!.tipRow,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicDivider,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetDivider,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicDivider,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetDivider(),
                                tip: AppLocalizations.of(context)!.tipDivider,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicVerticalDivider,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants
                                    .txtSnippetWidgetVerticalDivider,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicVerticalDivider,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetVerticalDivider(),
                                tip: AppLocalizations.of(context)!
                                    .tipVerticalDivider,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicTextButton,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetTextButton,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicTextButton,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetTextButton(),
                                tip: AppLocalizations.of(context)!.tipButton,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicElevatedButton,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data:
                                    AppConstants.txtSnippetWidgetElevatedButton,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicElevatedButton,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetElevatedButton(),
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicElevatedButtonIcon,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants
                                    .txtSnippetWidgetElevatedButtonIcon,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicElevatedButtonIcon,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetElevatedButtonIcon(),
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicOutlinedButton,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data:
                                    AppConstants.txtSnippetWidgetOutlinedButton,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicOutlinedButton,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetOutlinedButton(),
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicIcon,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetIcon,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicIcon,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetIcon(),
                                tip: AppLocalizations.of(context)!.tipIcon,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicIconBackground,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data:
                                    AppConstants.txtSnippetWidgetIconBackground,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicIconBackground,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetIconBackground(),
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicImage,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetImage,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicImage,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetImage(),
                                tip: AppLocalizations.of(context)!.tipImage,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicBottomSheet,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetBottomSheet,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicBottomSheet,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetBottomSheet(),
                                tip: AppLocalizations.of(context)!
                                    .tipBottomSheet,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicMediaQuery,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetMediaQuery,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicMediaQuery,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetMediaQuery(),
                                tip:
                                    AppLocalizations.of(context)!.tipMediaQuery,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicGestureDetector,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants
                                    .txtSnippetWidgetGestureDetector,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicGestureDetector,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetGestureDetector(),
                                tip: AppLocalizations.of(context)!
                                    .tipGestureDetector,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicInkWell,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetInkWell,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicInkWell,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetInkWell(),
                                tip: AppLocalizations.of(context)!.tipInkWell,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicCard,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetCard,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicCard,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetCard(),
                                tip: AppLocalizations.of(context)!.tipCard,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicFutureBuilder,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data:
                                    AppConstants.txtSnippetWidgetFutureBuilder,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicFutureBuilder,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetFutureBuilder(),
                                tip: AppLocalizations.of(context)!
                                    .tipFutureBuilder,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicStack,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetStack,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicStack,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetStack(),
                                tip: AppLocalizations.of(context)!.tipStack,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicPageView,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetPageView,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicPageView,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetPageView(),
                                tip: AppLocalizations.of(context)!.tipPageView,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicTable,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetTable,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicTable,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetTable(),
                                tip: AppLocalizations.of(context)!.tipTable,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicSnackBar,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetSnackBar,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicSnackBar,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetSnackBar(),
                                tip: AppLocalizations.of(context)!.tipSnackBar,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicDialog,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetDialog,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicDialog,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetDialog(),
                                tip: AppLocalizations.of(context)!.tipDialog,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicListView,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetListView,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicListView,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetListView(),
                                tip: AppLocalizations.of(context)!.tipListView,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicRotatedBox,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetRotatedBox,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicRotatedBox,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetRotatedBox(),
                                tip:
                                    AppLocalizations.of(context)!.tipRotatedBox,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicClipRect,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetClipRect,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicClipRect,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetClipRect(),
                                tip: AppLocalizations.of(context)!.tipClipRect,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicClipRRect,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetClipRRect,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicClipRRect,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetClipRRect(),
                                tip: AppLocalizations.of(context)!.tipClipRRect,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicClipOval,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetClipOval,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicClipOval,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetClipOval(),
                                tip: AppLocalizations.of(context)!.tipClipOval,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicFlexible,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetFlexible,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicFlexible,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetFlexible(),
                                tip: AppLocalizations.of(context)!.tipFlexible,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicExpanded,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetExpanded,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicExpanded,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetExpanded(),
                                tip: AppLocalizations.of(context)!.tipExpanded,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicCircleAvatar,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetCircleAvatar,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicCircleAvatar,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetCircleAvatar(),
                                tip: AppLocalizations.of(context)!
                                    .tipCircleAvatar,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicFittedBox,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetFittedBox,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicFittedBox,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetFittedBox(),
                                tip: AppLocalizations.of(context)!.tipFittedBox,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicVisibility,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetVisibility,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicVisibility,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetVisibility(),
                                tip:
                                    AppLocalizations.of(context)!.tipVisibility,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicBoxDecoration,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data:
                                    AppConstants.txtSnippetWidgetBoxDecoration,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicBoxDecoration,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetBoxDecoration(),
                                tip: AppLocalizations.of(context)!
                                    .tipBoxDecoration,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicSelectableText,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data:
                                    AppConstants.txtSnippetWidgetSelectableText,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicSelectableText,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetSelectableText(),
                                tip: AppLocalizations.of(context)!
                                    .tipSelectableText,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicInteractiveViewer,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants
                                    .txtSnippetWidgetInteractiveViewer,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicInteractiveViewer,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetInteractiveViewer(),
                                tip: AppLocalizations.of(context)!
                                    .tipInteractiveViewer,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicAspectRatio,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetAspectRatio,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicAspectRatio,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetAspectRatio(),
                                tip: AppLocalizations.of(context)!
                                    .tipAspectRatio,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicPlaceholder,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetPlaceholder,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicPlaceholder,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetPlaceholder(),
                                tip: AppLocalizations.of(context)!
                                    .tipPlaceholder,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicSpacer,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetSpacer,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicSpacer,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetSpacer(),
                                tip: AppLocalizations.of(context)!.tipSpacer,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicListWheelScrollView,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants
                                    .txtSnippetWidgetListWheelScrollView,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicListWheelScrollView,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetListWheelScrollView(),
                                tip: AppLocalizations.of(context)!
                                    .tipListWheelScrollView,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicOpacity,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetOpacity,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicOpacity,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetOpacity(),
                                tip: AppLocalizations.of(context)!.tipOpacity,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicConstrainedBox,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data:
                                    AppConstants.txtSnippetWidgetConstrainedBox,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicConstrainedBox,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetConstrainedBox(),
                                tip: AppLocalizations.of(context)!
                                    .tipConstrainedBox,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicAlign,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetAlign,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicAlign,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetAlign(),
                                tip: AppLocalizations.of(context)!.tipAlign,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicPadding,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetPadding,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicPadding,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetPadding(),
                                tip: AppLocalizations.of(context)!.tipPadding,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicAbsorbPointer,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data:
                                    AppConstants.txtSnippetWidgetAbsorbPointer,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicAbsorbPointer,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetAbsorbPointer(),
                                tip: AppLocalizations.of(context)!
                                    .tipAbsorbPointer,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicIgnorePointer,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data:
                                    AppConstants.txtSnippetWidgetIgnorePointer,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicIgnorePointer,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetIgnorePointer(),
                                tip: AppLocalizations.of(context)!
                                    .tipIgnorePointer,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicTooltip,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetTooltip,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicTooltip,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetTooltip(),
                                tip: AppLocalizations.of(context)!.tipTooltip,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicColors,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetColors,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicColors,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetColors(),
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicFlutterLogo,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetFlutterLogo,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicFlutterLogo,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetFlutterLogo(),
                                tip: AppLocalizations.of(context)!
                                    .tipFlutterLogo,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicSizedBox,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetSizedBox,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicSizedBox,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetSizedBox(),
                                tip: AppLocalizations.of(context)!.tipSizedBox,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicFloatingActionButton,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants
                                    .txtSnippetWidgetFloatingActionButton,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicFloatingActionButton,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetFloatingActionButton(),
                                tip: AppLocalizations.of(context)!
                                    .tipFloatingActionButton,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicCheckbox,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetCheckbox,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicCheckbox,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetCheckbox(),
                                tip: AppLocalizations.of(context)!.tipCheckbox,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicEndDrawer,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetEndDrawer,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicEndDrawer,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetEndDrawer(),
                                tip: AppLocalizations.of(context)!.tipEndDrawer,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicContainerTransform,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants
                                    .txtSnippetWidgetContainerTransform,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicContainerTransform,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetContainerTransform(),
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicBanner,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetBanner,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicBanner,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetBanner(),
                                tip: AppLocalizations.of(context)!.tipBanner,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicBorderRadius,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetBorderRadius,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicBorderRadius,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetBorderRadius(),
                                tip: AppLocalizations.of(context)!
                                    .tipBorderRadius,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicSingleChildScrollView,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants
                                    .txtSnippetWidgetSingleChildScrollView,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicSingleChildScrollView,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetSingleChildScrollView(),
                                tip: AppLocalizations.of(context)!
                                    .tipSingleChildScrollView,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicBoxShadow,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetBoxShadow,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicBoxShadow,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetBoxShadow(),
                                tip: AppLocalizations.of(context)!.tipBoxShadow,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicShaderMask,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetShaderMask,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicShaderMask,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetShaderMask(),
                                tip:
                                    AppLocalizations.of(context)!.tipShaderMask,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicColorFiltered,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data:
                                    AppConstants.txtSnippetWidgetColorFiltered,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicColorFiltered,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetColorFiltered(),
                                tip: AppLocalizations.of(context)!
                                    .tipColorFiltered,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicDataTable,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetDataTable,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicDataTable,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetDataTable(),
                                tip: AppLocalizations.of(context)!.tipDataTable,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicImageFiltered,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data:
                                    AppConstants.txtSnippetWidgetImageFiltered,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicImageFiltered,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetImageFiltered(),
                                tip: AppLocalizations.of(context)!
                                    .tipImageFiltered,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicPositioned,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetPositioned,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicPositioned,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetPositioned(),
                                tip:
                                    AppLocalizations.of(context)!.tipPositioned,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicLinearProgressIndicator,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants
                                    .txtSnippetWidgetLinearProgressIndicator,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicLinearProgressIndicator,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetLinearProgressIndicator(),
                                tip: AppLocalizations.of(context)!
                                    .tipLinearProgressIndicator,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicRawString,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetRawString,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicRawString,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetRawString(),
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicLimitedBox,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                  data: AppConstants.txtSnippetWidgetLimitedBox,
                                  title: AppLocalizations.of(context)!
                                      .menuWidgetBasicLimitedBox,
                                  bottomNavigationBarIndex: 2,
                                  widget: SnippetLimitedBox(),
                                  tip: AppLocalizations.of(context)!
                                      .tipLimitedBox),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicCheckboxListTile,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants
                                    .txtSnippetWidgetCheckboxListTile,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicCheckboxListTile,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetCheckboxListTile(),
                                tip: AppLocalizations.of(context)!
                                    .tipCheckboxListTile,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicSwitchListTile,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data:
                                    AppConstants.txtSnippetWidgetSwitchListTile,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicSwitchListTile,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetSwitchListTile(),
                                tip: AppLocalizations.of(context)!
                                    .tipSwitchListTile,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicExpansionPanelList,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants
                                    .txtSnippetWidgetExpansionPanelList,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicExpansionPanelList,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetExpansionPanelList(),
                                tip: AppLocalizations.of(context)!
                                    .tipExpansionPanelList,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicFractionallySizedBox,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants
                                    .txtSnippetWidgetFractionallySizedBox,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicFractionallySizedBox,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetFractionallySizedBox(),
                                tip: AppLocalizations.of(context)!
                                    .tipFractionallySizedBox,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicScrollbar,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetScrollbar,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicScrollbar,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetScrollbar(),
                                tip: AppLocalizations.of(context)!.tipScrollbar,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetBasicOverflowBox,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetOverflowBox,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetBasicOverflowBox,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetOverflowBox(),
                                tip: AppLocalizations.of(context)!
                                    .tipOverflowBox,
                              ),
                            ),
                          ),
                        ],
                        bottomNavigationBarIndex: 2,
                      ),
                    ),
                  ),
                  AppMenu(
                    text: AppLocalizations.of(context)!.menuWidgetAdvanced,
                    icon: Icons.swap_vert,
                    onPressed: () => Navigator.of(context).pushNamed(
                      AppRoutes.snippetFilter,
                      arguments: SnippetFilterModel(
                        title: AppLocalizations.of(context)!.menuWidgetAdvanced,
                        snippets: [
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetAdvancedRefreshIndicator,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants
                                    .txtSnippetWidgetRefreshIndicator,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetAdvancedRefreshIndicator,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetRefreshIndicator(),
                                tip: AppLocalizations.of(context)!
                                    .tipRefreshIndicator,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetAdvancedDraggable,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetDraggable,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetAdvancedDraggable,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetDraggable(),
                                tip: AppLocalizations.of(context)!.tipDraggable,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetAdvancedGlobalKey,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetGlobalKey,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetAdvancedGlobalKey,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetGlobalKey(),
                                tip: AppLocalizations.of(context)!.tipGlobalKey,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetAdvancedDrawer,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetDrawer,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetAdvancedDrawer,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetDrawer(),
                                tip: AppLocalizations.of(context)!.tipDrawer,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetAdvancedDropdown,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetDropdown,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetAdvancedDropdown,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetDropdown(),
                                tip: AppLocalizations.of(context)!.tipDropdown,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetAdvancedDismissible,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetDismissible,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetAdvancedDismissible,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetDismissible(),
                                tip: AppLocalizations.of(context)!
                                    .tipDismissible,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetAdvancedGridView,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetGridView,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetAdvancedGridView,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetGridView(),
                                tip: AppLocalizations.of(context)!.tipGridView,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetAdvancedSilverAppBar,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetSilverAppBar,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetAdvancedSilverAppBar,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetSilverAppBar(),
                                tip: AppLocalizations.of(context)!
                                    .tipSilverAppBar,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetAdvancedSilverGrid,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetSilverGrid,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetAdvancedSilverGrid,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetSilverGrid(),
                                tip:
                                    AppLocalizations.of(context)!.tipSilverGrid,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetAdvancedNavigator,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetNavigator,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetAdvancedNavigator,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetNavigator(),
                                tip: AppLocalizations.of(context)!.tipNavigator,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetAdvancedNavigatorWithArguments,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants
                                    .txtSnippetWidgetNavigatorWithArguments,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetAdvancedNavigatorWithArguments,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetNavigatorWithArguments(),
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetAdvancedSendDataToScreen,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants
                                    .txtSnippetWidgetSendDataToScreen,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetAdvancedSendDataToScreen,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetSendDataToScreen(),
                                tip: AppLocalizations.of(context)!.tipSendData,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetAdvancedPopupMenuButton,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants
                                    .txtSnippetWidgetPopupMenuButton,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetAdvancedPopupMenuButton,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetPopupMenuButton(),
                                tip: AppLocalizations.of(context)!
                                    .tipPopupMenuButton,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetAdvancedTabs,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetTabs,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetAdvancedTabs,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetTabs(),
                                tip: AppLocalizations.of(context)!.tipTabs,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetAdvancedClipPath,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                  data: AppConstants.txtSnippetWidgetClipPath,
                                  title: AppLocalizations.of(context)!
                                      .menuWidgetAdvancedClipPath,
                                  bottomNavigationBarIndex: 2,
                                  widget: SnippetClipPath(),
                                  tip: AppLocalizations.of(context)!
                                      .tipClipPath),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetAdvancedSlider,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetSlider,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetAdvancedSlider,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetSlider(),
                                tip: AppLocalizations.of(context)!.tipSlider,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetAdvancedListViewWithSearch,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants
                                    .txtSnippetWidgetListViewWithSearch,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetAdvancedListViewWithSearch,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetListViewWithSearch(),
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetAdvancedChip,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetChip,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetAdvancedChip,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetChip(),
                                tip: AppLocalizations.of(context)!.tipChip,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetAdvancedImageLoadingBuilder,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants
                                    .txtSnippetWidgetImageLoadingBuilder,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetAdvancedImageLoadingBuilder,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetImageLoadingBuilder(),
                                tip: AppLocalizations.of(context)!
                                    .tipImageLoadingBuilder,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetAdvancedMouseRegion,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetMouseRegion,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetAdvancedMouseRegion,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetMouseRegion(),
                                tip: AppLocalizations.of(context)!
                                    .tipMouseRegion,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetAdvancedLayoutBuilder,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data:
                                    AppConstants.txtSnippetWidgetLayoutBuilder,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetAdvancedLayoutBuilder,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetLayoutBuilder(),
                                tip: AppLocalizations.of(context)!
                                    .tipLayoutBuilder,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetAdvancedBottomNavigationBar,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants
                                    .txtSnippetWidgetBottomNavigationBar,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetAdvancedBottomNavigationBar,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetBottomNavigationBar(),
                                tip: AppLocalizations.of(context)!
                                    .tipBottomNavigationBar,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetAdvancedExpansionPanel,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data:
                                    AppConstants.txtSnippetWidgetExpansionPanel,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetAdvancedExpansionPanel,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetExpansionPanel(),
                                tip: AppLocalizations.of(context)!
                                    .tipExpansionPanel,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetAdvancedPaint,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetPaint,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetAdvancedPaint,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetPaint(),
                                tip: AppLocalizations.of(context)!.tipPaint,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetAdvancedLoadJson,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetLoadJson,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetAdvancedLoadJson,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetLoadJson(),
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetAdvancedClipboard,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetClipboard,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetAdvancedClipboard,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetClipboard(),
                                tip: AppLocalizations.of(context)!.tipClipboard,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetAdvancedPageRouteBuilder,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants
                                    .txtSnippetWidgetPageRouteBuilder,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetAdvancedPageRouteBuilder,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetPageRouteBuilder(),
                                tip: AppLocalizations.of(context)!
                                    .tipPageRouteBuilder,
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetAdvancedLoadTxt,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetLoadTxt,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetAdvancedLoadTxt,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetLoadTxt(),
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetAdvancedIndexedStack,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetIndexedStack,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetAdvancedIndexedStack,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetIndexedStack(),
                                tip: AppLocalizations.of(context)!
                                    .tipIndexedStack,
                              ),
                            ),
                          ),
                        ],
                        bottomNavigationBarIndex: 2,
                      ),
                    ),
                  ),
                  AppMenu(
                    text: AppLocalizations.of(context)!.menuWidgetApps,
                    icon: Icons.grid_view,
                    onPressed: () => Navigator.of(context).pushNamed(
                      AppRoutes.snippetFilter,
                      arguments: SnippetFilterModel(
                        title: AppLocalizations.of(context)!.menuWidgetApps,
                        snippets: [
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetAppStopwatch,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetStopwtach,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetAppStopwatch,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetStopwatch(),
                              ),
                            ),
                          ),
                          SnippetFilterListModel(
                            text: AppLocalizations.of(context)!
                                .menuWidgetAppCountdown,
                            onPressed: () => Navigator.of(context).pushNamed(
                              AppRoutes.snippetShow,
                              arguments: SnippetShowModel(
                                data: AppConstants.txtSnippetWidgetCountdown,
                                title: AppLocalizations.of(context)!
                                    .menuWidgetAppCountdown,
                                bottomNavigationBarIndex: 2,
                                widget: SnippetCountdown(),
                              ),
                            ),
                          ),
                        ],
                        bottomNavigationBarIndex: 2,
                      ),
                    ),
                  ),
                ],
              ),
              AppFloatinActionBar(),
            ],
          ),
        ),
        bottomNavigationBar: AppBottomNavigationBar(
          index: 2,
        ),
      ),
    );
  }
}
