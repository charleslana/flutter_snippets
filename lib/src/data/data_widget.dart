import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_snippets/src/constants/app_constants.dart';
import 'package:flutter_snippets/src/models/snippet_filter_list_model.dart';
import 'package:flutter_snippets/src/models/snippet_filter_model.dart';
import 'package:flutter_snippets/src/models/snippet_show_model.dart';
import 'package:flutter_snippets/src/routes/app_routes.dart';
import 'package:flutter_snippets/src/snippets/snippet_animated_container.dart';
import 'package:flutter_snippets/src/snippets/snippet_animated_cross_fade.dart';
import 'package:flutter_snippets/src/snippets/snippet_animated_default_text_style.dart';
import 'package:flutter_snippets/src/snippets/snippet_animated_image.dart';
import 'package:flutter_snippets/src/snippets/snippet_animated_opacity.dart';
import 'package:flutter_snippets/src/snippets/snippet_animated_switcher.dart';
import 'package:flutter_snippets/src/snippets/snippet_animation_icon.dart';
import 'package:flutter_snippets/src/snippets/snippet_container.dart';
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
import 'package:flutter_snippets/src/snippets/snippet_custom_paint.dart';
import 'package:flutter_snippets/src/snippets/snippet_data_table.dart';
import 'package:flutter_snippets/src/snippets/snippet_dialog.dart';
import 'package:flutter_snippets/src/snippets/snippet_dismissible.dart';
import 'package:flutter_snippets/src/snippets/snippet_divider.dart';
import 'package:flutter_snippets/src/snippets/snippet_draggable.dart';
import 'package:flutter_snippets/src/snippets/snippet_draggable_scrollable_sheet.dart';
import 'package:flutter_snippets/src/snippets/snippet_drawer.dart';
import 'package:flutter_snippets/src/snippets/snippet_dropdown.dart';
import 'package:flutter_snippets/src/snippets/snippet_elevated_button.dart';
import 'package:flutter_snippets/src/snippets/snippet_elevated_button_icon.dart';
import 'package:flutter_snippets/src/snippets/snippet_end_drawer.dart';
import 'package:flutter_snippets/src/snippets/snippet_expanded.dart';
import 'package:flutter_snippets/src/snippets/snippet_expansion_panel.dart';
import 'package:flutter_snippets/src/snippets/snippet_expansion_panel_list.dart';
import 'package:flutter_snippets/src/snippets/snippet_fade_in_image.dart';
import 'package:flutter_snippets/src/snippets/snippet_fade_transition.dart';
import 'package:flutter_snippets/src/snippets/snippet_fitted_box.dart';
import 'package:flutter_snippets/src/snippets/snippet_flexible.dart';
import 'package:flutter_snippets/src/snippets/snippet_floating_action_button.dart';
import 'package:flutter_snippets/src/snippets/snippet_flutter_logo.dart';
import 'package:flutter_snippets/src/snippets/snippet_fractionally_sized_box.dart';
import 'package:flutter_snippets/src/snippets/snippet_future_builder.dart';
import 'package:flutter_snippets/src/snippets/snippet_gesture_detector.dart';
import 'package:flutter_snippets/src/snippets/snippet_global_key.dart';
import 'package:flutter_snippets/src/snippets/snippet_grid_view.dart';
import 'package:flutter_snippets/src/snippets/snippet_hero.dart';
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
import 'package:flutter_snippets/src/snippets/snippet_matrix.dart';
import 'package:flutter_snippets/src/snippets/snippet_media_query.dart';
import 'package:flutter_snippets/src/snippets/snippet_mouse_region.dart';
import 'package:flutter_snippets/src/snippets/snippet_navigator.dart';
import 'package:flutter_snippets/src/snippets/snippet_navigator_with_arguments.dart';
import 'package:flutter_snippets/src/snippets/snippet_opacity.dart';
import 'package:flutter_snippets/src/snippets/snippet_outlined_button.dart';
import 'package:flutter_snippets/src/snippets/snippet_overflow_box.dart';
import 'package:flutter_snippets/src/snippets/snippet_padding.dart';
import 'package:flutter_snippets/src/snippets/snippet_page_route_builder.dart';
import 'package:flutter_snippets/src/snippets/snippet_page_transition.dart';
import 'package:flutter_snippets/src/snippets/snippet_page_view.dart';
import 'package:flutter_snippets/src/snippets/snippet_paint.dart';
import 'package:flutter_snippets/src/snippets/snippet_placeholder.dart';
import 'package:flutter_snippets/src/snippets/snippet_popup_menu_button.dart';
import 'package:flutter_snippets/src/snippets/snippet_positioned.dart';
import 'package:flutter_snippets/src/snippets/snippet_radio_list_tile.dart';
import 'package:flutter_snippets/src/snippets/snippet_raw_string.dart';
import 'package:flutter_snippets/src/snippets/snippet_refresh_indicator.dart';
import 'package:flutter_snippets/src/snippets/snippet_rich_text.dart';
import 'package:flutter_snippets/src/snippets/snippet_rotated_box.dart';
import 'package:flutter_snippets/src/snippets/snippet_rotating_circle.dart';
import 'package:flutter_snippets/src/snippets/snippet_row.dart';
import 'package:flutter_snippets/src/snippets/snippet_safe_area.dart';
import 'package:flutter_snippets/src/snippets/snippet_scroll_controller.dart';
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
import 'package:flutter_snippets/src/snippets/snippet_stopwatch.dart';
import 'package:flutter_snippets/src/snippets/snippet_switch_list_tile.dart';
import 'package:flutter_snippets/src/snippets/snippet_table.dart';
import 'package:flutter_snippets/src/snippets/snippet_tabs.dart';
import 'package:flutter_snippets/src/snippets/snippet_text.dart';
import 'package:flutter_snippets/src/snippets/snippet_text_button.dart';
import 'package:flutter_snippets/src/snippets/snippet_text_default_style.dart';
import 'package:flutter_snippets/src/snippets/snippet_text_field.dart';
import 'package:flutter_snippets/src/snippets/snippet_text_overflow.dart';
import 'package:flutter_snippets/src/snippets/snippet_text_style.dart';
import 'package:flutter_snippets/src/snippets/snippet_tooltip.dart';
import 'package:flutter_snippets/src/snippets/snippet_transform.dart';
import 'package:flutter_snippets/src/snippets/snippet_vertical_divider.dart';
import 'package:flutter_snippets/src/snippets/snippet_visibility.dart';
import 'package:flutter_snippets/src/widgets/app_menu.dart';

class DataWidget {
  static Set<AppMenu> of(BuildContext context) {
    return {
      AppMenu(
        text: AppLocalizations.of(context)!.menuWidgetCreate,
        icon: Icons.add,
        onPressed: () => Navigator.of(context).pushNamed(
          AppRoutes.snippetFilter,
          arguments: SnippetFilterModel(
            title: AppLocalizations.of(context)!.menuWidgetCreate,
            snippets: [
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetCreateStateless,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetStateless,
                    title:
                        AppLocalizations.of(context)!.menuWidgetCreateStateless,
                    widget: const SnippetStateless(),
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetCreateStateful,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetStateful,
                    title:
                        AppLocalizations.of(context)!.menuWidgetCreateStateful,
                    widget: const SnippetStateful(),
                  ),
                ),
              ),
            ],
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
                text: AppLocalizations.of(context)!.menuWidgetBasicSafeArea,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetSafeArea,
                    title:
                        AppLocalizations.of(context)!.menuWidgetBasicSafeArea,
                    widget: const SnippetSafeArea(),
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
                    data:
                        AppConstants.txtSnippetWidgetCircularProgressIndicator,
                    title: AppLocalizations.of(context)!
                        .menuWidgetBasicCircularProgressIndicator,
                    widget: const SnippetCircularProgressIndicator(),
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicContainer,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetContainer,
                    title:
                        AppLocalizations.of(context)!.menuWidgetBasicContainer,
                    widget: const SnippetContainer(),
                    tip: AppLocalizations.of(context)!.tipContainer,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicText,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetText,
                    title: AppLocalizations.of(context)!.menuWidgetBasicText,
                    widget: const SnippetText(),
                    tip: AppLocalizations.of(context)!.tipText,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicTextOverflow,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetTextOverflow,
                    title: AppLocalizations.of(context)!
                        .menuWidgetBasicTextOverflow,
                    widget: const SnippetTextOverflow(),
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicTextStyle,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetTextStyle,
                    title:
                        AppLocalizations.of(context)!.menuWidgetBasicTextStyle,
                    widget: const SnippetTextStyle(),
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!
                    .menuWidgetBasicTextDefaultStyle,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetTextDefaultStyle,
                    title: AppLocalizations.of(context)!
                        .menuWidgetBasicTextDefaultStyle,
                    widget: const SnippetTextDefaultStyle(),
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicRichText,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetRichText,
                    title:
                        AppLocalizations.of(context)!.menuWidgetBasicRichText,
                    widget: const SnippetRichText(),
                    tip: AppLocalizations.of(context)!.tipRichText,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicColumn,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetColumn,
                    title: AppLocalizations.of(context)!.menuWidgetBasicColumn,
                    widget: const SnippetColumn(),
                    tip: AppLocalizations.of(context)!.tipColumn,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicRow,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetRow,
                    title: AppLocalizations.of(context)!.menuWidgetBasicRow,
                    widget: const SnippetRow(),
                    tip: AppLocalizations.of(context)!.tipRow,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicDivider,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetDivider,
                    title: AppLocalizations.of(context)!.menuWidgetBasicDivider,
                    widget: const SnippetDivider(),
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
                    data: AppConstants.txtSnippetWidgetVerticalDivider,
                    title: AppLocalizations.of(context)!
                        .menuWidgetBasicVerticalDivider,
                    widget: const SnippetVerticalDivider(),
                    tip: AppLocalizations.of(context)!.tipVerticalDivider,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicTextButton,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetTextButton,
                    title:
                        AppLocalizations.of(context)!.menuWidgetBasicTextButton,
                    widget: const SnippetTextButton(),
                    tip: AppLocalizations.of(context)!.tipButton,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text:
                    AppLocalizations.of(context)!.menuWidgetBasicElevatedButton,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetElevatedButton,
                    title: AppLocalizations.of(context)!
                        .menuWidgetBasicElevatedButton,
                    widget: const SnippetElevatedButton(),
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!
                    .menuWidgetBasicElevatedButtonIcon,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetElevatedButtonIcon,
                    title: AppLocalizations.of(context)!
                        .menuWidgetBasicElevatedButtonIcon,
                    widget: const SnippetElevatedButtonIcon(),
                  ),
                ),
              ),
              SnippetFilterListModel(
                text:
                    AppLocalizations.of(context)!.menuWidgetBasicOutlinedButton,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetOutlinedButton,
                    title: AppLocalizations.of(context)!
                        .menuWidgetBasicOutlinedButton,
                    widget: const SnippetOutlinedButton(),
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicIcon,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetIcon,
                    title: AppLocalizations.of(context)!.menuWidgetBasicIcon,
                    widget: const SnippetIcon(),
                    tip: AppLocalizations.of(context)!.tipIcon,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text:
                    AppLocalizations.of(context)!.menuWidgetBasicIconBackground,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetIconBackground,
                    title: AppLocalizations.of(context)!
                        .menuWidgetBasicIconBackground,
                    widget: const SnippetIconBackground(),
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicImage,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetImage,
                    title: AppLocalizations.of(context)!.menuWidgetBasicImage,
                    widget: const SnippetImage(),
                    tip: AppLocalizations.of(context)!.tipImage,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicBottomSheet,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetBottomSheet,
                    title: AppLocalizations.of(context)!
                        .menuWidgetBasicBottomSheet,
                    widget: const SnippetBottomSheet(),
                    tip: AppLocalizations.of(context)!.tipBottomSheet,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicMediaQuery,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetMediaQuery,
                    title:
                        AppLocalizations.of(context)!.menuWidgetBasicMediaQuery,
                    widget: const SnippetMediaQuery(),
                    tip: AppLocalizations.of(context)!.tipMediaQuery,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!
                    .menuWidgetBasicGestureDetector,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetGestureDetector,
                    title: AppLocalizations.of(context)!
                        .menuWidgetBasicGestureDetector,
                    widget: const SnippetGestureDetector(),
                    tip: AppLocalizations.of(context)!.tipGestureDetector,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicInkWell,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetInkWell,
                    title: AppLocalizations.of(context)!.menuWidgetBasicInkWell,
                    widget: const SnippetInkWell(),
                    tip: AppLocalizations.of(context)!.tipInkWell,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicCard,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetCard,
                    title: AppLocalizations.of(context)!.menuWidgetBasicCard,
                    widget: const SnippetCard(),
                    tip: AppLocalizations.of(context)!.tipCard,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text:
                    AppLocalizations.of(context)!.menuWidgetBasicFutureBuilder,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetFutureBuilder,
                    title: AppLocalizations.of(context)!
                        .menuWidgetBasicFutureBuilder,
                    widget: const SnippetFutureBuilder(),
                    tip: AppLocalizations.of(context)!.tipFutureBuilder,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicStack,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetStack,
                    title: AppLocalizations.of(context)!.menuWidgetBasicStack,
                    widget: const SnippetStack(),
                    tip: AppLocalizations.of(context)!.tipStack,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicPageView,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetPageView,
                    title:
                        AppLocalizations.of(context)!.menuWidgetBasicPageView,
                    widget: const SnippetPageView(),
                    tip: AppLocalizations.of(context)!.tipPageView,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicTable,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetTable,
                    title: AppLocalizations.of(context)!.menuWidgetBasicTable,
                    widget: const SnippetTable(),
                    tip: AppLocalizations.of(context)!.tipTable,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicSnackBar,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetSnackBar,
                    title:
                        AppLocalizations.of(context)!.menuWidgetBasicSnackBar,
                    widget: const SnippetSnackBar(),
                    tip: AppLocalizations.of(context)!.tipSnackBar,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicDialog,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetDialog,
                    title: AppLocalizations.of(context)!.menuWidgetBasicDialog,
                    widget: const SnippetDialog(),
                    tip: AppLocalizations.of(context)!.tipDialog,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicListView,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetListView,
                    title:
                        AppLocalizations.of(context)!.menuWidgetBasicListView,
                    widget: const SnippetListView(),
                    tip: AppLocalizations.of(context)!.tipListView,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicRotatedBox,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetRotatedBox,
                    title:
                        AppLocalizations.of(context)!.menuWidgetBasicRotatedBox,
                    widget: const SnippetRotatedBox(),
                    tip: AppLocalizations.of(context)!.tipRotatedBox,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicClipRect,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetClipRect,
                    title:
                        AppLocalizations.of(context)!.menuWidgetBasicClipRect,
                    widget: const SnippetClipRect(),
                    tip: AppLocalizations.of(context)!.tipClipRect,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicClipRRect,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetClipRRect,
                    title:
                        AppLocalizations.of(context)!.menuWidgetBasicClipRRect,
                    widget: const SnippetClipRRect(),
                    tip: AppLocalizations.of(context)!.tipClipRRect,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicClipOval,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetClipOval,
                    title:
                        AppLocalizations.of(context)!.menuWidgetBasicClipOval,
                    widget: const SnippetClipOval(),
                    tip: AppLocalizations.of(context)!.tipClipOval,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicFlexible,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetFlexible,
                    title:
                        AppLocalizations.of(context)!.menuWidgetBasicFlexible,
                    widget: const SnippetFlexible(),
                    tip: AppLocalizations.of(context)!.tipFlexible,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicExpanded,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetExpanded,
                    title:
                        AppLocalizations.of(context)!.menuWidgetBasicExpanded,
                    widget: const SnippetExpanded(),
                    tip: AppLocalizations.of(context)!.tipExpanded,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicCircleAvatar,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetCircleAvatar,
                    title: AppLocalizations.of(context)!
                        .menuWidgetBasicCircleAvatar,
                    widget: const SnippetCircleAvatar(),
                    tip: AppLocalizations.of(context)!.tipCircleAvatar,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicFittedBox,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetFittedBox,
                    title:
                        AppLocalizations.of(context)!.menuWidgetBasicFittedBox,
                    widget: const SnippetFittedBox(),
                    tip: AppLocalizations.of(context)!.tipFittedBox,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicVisibility,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetVisibility,
                    title:
                        AppLocalizations.of(context)!.menuWidgetBasicVisibility,
                    widget: const SnippetVisibility(),
                    tip: AppLocalizations.of(context)!.tipVisibility,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text:
                    AppLocalizations.of(context)!.menuWidgetBasicBoxDecoration,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetBoxDecoration,
                    title: AppLocalizations.of(context)!
                        .menuWidgetBasicBoxDecoration,
                    widget: const SnippetBoxDecoration(),
                    tip: AppLocalizations.of(context)!.tipBoxDecoration,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text:
                    AppLocalizations.of(context)!.menuWidgetBasicSelectableText,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetSelectableText,
                    title: AppLocalizations.of(context)!
                        .menuWidgetBasicSelectableText,
                    widget: const SnippetSelectableText(),
                    tip: AppLocalizations.of(context)!.tipSelectableText,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!
                    .menuWidgetBasicInteractiveViewer,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetInteractiveViewer,
                    title: AppLocalizations.of(context)!
                        .menuWidgetBasicInteractiveViewer,
                    widget: const SnippetInteractiveViewer(),
                    tip: AppLocalizations.of(context)!.tipInteractiveViewer,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicAspectRatio,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetAspectRatio,
                    title: AppLocalizations.of(context)!
                        .menuWidgetBasicAspectRatio,
                    widget: const SnippetAspectRatio(),
                    tip: AppLocalizations.of(context)!.tipAspectRatio,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicPlaceholder,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetPlaceholder,
                    title: AppLocalizations.of(context)!
                        .menuWidgetBasicPlaceholder,
                    widget: const SnippetPlaceholder(),
                    tip: AppLocalizations.of(context)!.tipPlaceholder,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicSpacer,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetSpacer,
                    title: AppLocalizations.of(context)!.menuWidgetBasicSpacer,
                    widget: const SnippetSpacer(),
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
                    data: AppConstants.txtSnippetWidgetListWheelScrollView,
                    title: AppLocalizations.of(context)!
                        .menuWidgetBasicListWheelScrollView,
                    widget: const SnippetListWheelScrollView(),
                    tip: AppLocalizations.of(context)!.tipListWheelScrollView,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicOpacity,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetOpacity,
                    title: AppLocalizations.of(context)!.menuWidgetBasicOpacity,
                    widget: const SnippetOpacity(),
                    tip: AppLocalizations.of(context)!.tipOpacity,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text:
                    AppLocalizations.of(context)!.menuWidgetBasicConstrainedBox,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetConstrainedBox,
                    title: AppLocalizations.of(context)!
                        .menuWidgetBasicConstrainedBox,
                    widget: const SnippetConstrainedBox(),
                    tip: AppLocalizations.of(context)!.tipConstrainedBox,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicAlign,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetAlign,
                    title: AppLocalizations.of(context)!.menuWidgetBasicAlign,
                    widget: const SnippetAlign(),
                    tip: AppLocalizations.of(context)!.tipAlign,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicPadding,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetPadding,
                    title: AppLocalizations.of(context)!.menuWidgetBasicPadding,
                    widget: const SnippetPadding(),
                    tip: AppLocalizations.of(context)!.tipPadding,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text:
                    AppLocalizations.of(context)!.menuWidgetBasicAbsorbPointer,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetAbsorbPointer,
                    title: AppLocalizations.of(context)!
                        .menuWidgetBasicAbsorbPointer,
                    widget: const SnippetAbsorbPointer(),
                    tip: AppLocalizations.of(context)!.tipAbsorbPointer,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text:
                    AppLocalizations.of(context)!.menuWidgetBasicIgnorePointer,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetIgnorePointer,
                    title: AppLocalizations.of(context)!
                        .menuWidgetBasicIgnorePointer,
                    widget: const SnippetIgnorePointer(),
                    tip: AppLocalizations.of(context)!.tipIgnorePointer,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicTooltip,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetTooltip,
                    title: AppLocalizations.of(context)!.menuWidgetBasicTooltip,
                    widget: const SnippetTooltip(),
                    tip: AppLocalizations.of(context)!.tipTooltip,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicColors,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetColors,
                    title: AppLocalizations.of(context)!.menuWidgetBasicColors,
                    widget: const SnippetColors(),
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicFlutterLogo,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetFlutterLogo,
                    title: AppLocalizations.of(context)!
                        .menuWidgetBasicFlutterLogo,
                    widget: const SnippetFlutterLogo(),
                    tip: AppLocalizations.of(context)!.tipFlutterLogo,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicSizedBox,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetSizedBox,
                    title:
                        AppLocalizations.of(context)!.menuWidgetBasicSizedBox,
                    widget: const SnippetSizedBox(),
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
                    data: AppConstants.txtSnippetWidgetFloatingActionButton,
                    title: AppLocalizations.of(context)!
                        .menuWidgetBasicFloatingActionButton,
                    widget: const SnippetFloatingActionButton(),
                    tip: AppLocalizations.of(context)!.tipFloatingActionButton,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicCheckbox,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetCheckbox,
                    title:
                        AppLocalizations.of(context)!.menuWidgetBasicCheckbox,
                    widget: const SnippetCheckbox(),
                    tip: AppLocalizations.of(context)!.tipCheckbox,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicEndDrawer,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetEndDrawer,
                    title:
                        AppLocalizations.of(context)!.menuWidgetBasicEndDrawer,
                    widget: const SnippetEndDrawer(),
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
                    data: AppConstants.txtSnippetWidgetContainerTransform,
                    title: AppLocalizations.of(context)!
                        .menuWidgetBasicContainerTransform,
                    widget: const SnippetContainerTransform(),
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicTransform,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetTransform,
                    title:
                        AppLocalizations.of(context)!.menuWidgetBasicTransform,
                    widget: const SnippetTransform(),
                    tip: AppLocalizations.of(context)!.tipTransform,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicBanner,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetBanner,
                    title: AppLocalizations.of(context)!.menuWidgetBasicBanner,
                    widget: const SnippetBanner(),
                    tip: AppLocalizations.of(context)!.tipBanner,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicBorderRadius,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetBorderRadius,
                    title: AppLocalizations.of(context)!
                        .menuWidgetBasicBorderRadius,
                    widget: const SnippetBorderRadius(),
                    tip: AppLocalizations.of(context)!.tipBorderRadius,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!
                    .menuWidgetBasicSingleChildScrollView,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetSingleChildScrollView,
                    title: AppLocalizations.of(context)!
                        .menuWidgetBasicSingleChildScrollView,
                    widget: const SnippetSingleChildScrollView(),
                    tip: AppLocalizations.of(context)!.tipSingleChildScrollView,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicBoxShadow,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetBoxShadow,
                    title:
                        AppLocalizations.of(context)!.menuWidgetBasicBoxShadow,
                    widget: const SnippetBoxShadow(),
                    tip: AppLocalizations.of(context)!.tipBoxShadow,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicShaderMask,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetShaderMask,
                    title:
                        AppLocalizations.of(context)!.menuWidgetBasicShaderMask,
                    widget: const SnippetShaderMask(),
                    tip: AppLocalizations.of(context)!.tipShaderMask,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text:
                    AppLocalizations.of(context)!.menuWidgetBasicColorFiltered,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetColorFiltered,
                    title: AppLocalizations.of(context)!
                        .menuWidgetBasicColorFiltered,
                    widget: const SnippetColorFiltered(),
                    tip: AppLocalizations.of(context)!.tipColorFiltered,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicDataTable,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetDataTable,
                    title:
                        AppLocalizations.of(context)!.menuWidgetBasicDataTable,
                    widget: const SnippetDataTable(),
                    tip: AppLocalizations.of(context)!.tipDataTable,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text:
                    AppLocalizations.of(context)!.menuWidgetBasicImageFiltered,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetImageFiltered,
                    title: AppLocalizations.of(context)!
                        .menuWidgetBasicImageFiltered,
                    widget: const SnippetImageFiltered(),
                    tip: AppLocalizations.of(context)!.tipImageFiltered,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicPositioned,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetPositioned,
                    title:
                        AppLocalizations.of(context)!.menuWidgetBasicPositioned,
                    widget: const SnippetPositioned(),
                    tip: AppLocalizations.of(context)!.tipPositioned,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!
                    .menuWidgetBasicLinearProgressIndicator,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetLinearProgressIndicator,
                    title: AppLocalizations.of(context)!
                        .menuWidgetBasicLinearProgressIndicator,
                    widget: const SnippetLinearProgressIndicator(),
                    tip: AppLocalizations.of(context)!
                        .tipLinearProgressIndicator,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicRawString,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetRawString,
                    title:
                        AppLocalizations.of(context)!.menuWidgetBasicRawString,
                    widget: const SnippetRawString(),
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicLimitedBox,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                      data: AppConstants.txtSnippetWidgetLimitedBox,
                      title: AppLocalizations.of(context)!
                          .menuWidgetBasicLimitedBox,
                      widget: const SnippetLimitedBox(),
                      tip: AppLocalizations.of(context)!.tipLimitedBox),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!
                    .menuWidgetBasicCheckboxListTile,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetCheckboxListTile,
                    title: AppLocalizations.of(context)!
                        .menuWidgetBasicCheckboxListTile,
                    widget: const SnippetCheckboxListTile(),
                    tip: AppLocalizations.of(context)!.tipCheckboxListTile,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text:
                    AppLocalizations.of(context)!.menuWidgetBasicSwitchListTile,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetSwitchListTile,
                    title: AppLocalizations.of(context)!
                        .menuWidgetBasicSwitchListTile,
                    widget: const SnippetSwitchListTile(),
                    tip: AppLocalizations.of(context)!.tipSwitchListTile,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!
                    .menuWidgetBasicExpansionPanelList,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetExpansionPanelList,
                    title: AppLocalizations.of(context)!
                        .menuWidgetBasicExpansionPanelList,
                    widget: const SnippetExpansionPanelList(),
                    tip: AppLocalizations.of(context)!.tipExpansionPanelList,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!
                    .menuWidgetBasicFractionallySizedBox,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetFractionallySizedBox,
                    title: AppLocalizations.of(context)!
                        .menuWidgetBasicFractionallySizedBox,
                    widget: const SnippetFractionallySizedBox(),
                    tip: AppLocalizations.of(context)!.tipFractionallySizedBox,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicScrollbar,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetScrollbar,
                    title:
                        AppLocalizations.of(context)!.menuWidgetBasicScrollbar,
                    widget: const SnippetScrollbar(),
                    tip: AppLocalizations.of(context)!.tipScrollbar,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicOverflowBox,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetOverflowBox,
                    title: AppLocalizations.of(context)!
                        .menuWidgetBasicOverflowBox,
                    widget: const SnippetOverflowBox(),
                    tip: AppLocalizations.of(context)!.tipOverflowBox,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text:
                    AppLocalizations.of(context)!.menuWidgetBasicRadioListTile,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetRadioListTile,
                    title: AppLocalizations.of(context)!
                        .menuWidgetBasicRadioListTile,
                    widget: const SnippetRadioListTile(),
                    tip: AppLocalizations.of(context)!.tipRadioListTile,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetBasicTextField,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetTextField,
                    title:
                        AppLocalizations.of(context)!.menuWidgetBasicTextField,
                    widget: const SnippetTextField(),
                    tip: AppLocalizations.of(context)!.tipTextField,
                  ),
                ),
              ),
            ],
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
                    data: AppConstants.txtSnippetWidgetRefreshIndicator,
                    title: AppLocalizations.of(context)!
                        .menuWidgetAdvancedRefreshIndicator,
                    widget: const SnippetRefreshIndicator(),
                    tip: AppLocalizations.of(context)!.tipRefreshIndicator,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetAdvancedDraggable,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetDraggable,
                    title: AppLocalizations.of(context)!
                        .menuWidgetAdvancedDraggable,
                    widget: const SnippetDraggable(),
                    tip: AppLocalizations.of(context)!.tipDraggable,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetAdvancedGlobalKey,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetGlobalKey,
                    title: AppLocalizations.of(context)!
                        .menuWidgetAdvancedGlobalKey,
                    widget: const SnippetGlobalKey(),
                    tip: AppLocalizations.of(context)!.tipGlobalKey,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetAdvancedDrawer,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetDrawer,
                    title:
                        AppLocalizations.of(context)!.menuWidgetAdvancedDrawer,
                    widget: const SnippetDrawer(),
                    tip: AppLocalizations.of(context)!.tipDrawer,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetAdvancedDropdown,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetDropdown,
                    title: AppLocalizations.of(context)!
                        .menuWidgetAdvancedDropdown,
                    widget: const SnippetDropdown(),
                    tip: AppLocalizations.of(context)!.tipDropdown,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text:
                    AppLocalizations.of(context)!.menuWidgetAdvancedDismissible,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetDismissible,
                    title: AppLocalizations.of(context)!
                        .menuWidgetAdvancedDismissible,
                    widget: const SnippetDismissible(),
                    tip: AppLocalizations.of(context)!.tipDismissible,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetAdvancedGridView,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetGridView,
                    title: AppLocalizations.of(context)!
                        .menuWidgetAdvancedGridView,
                    widget: const SnippetGridView(),
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
                    widget: const SnippetSilverAppBar(),
                    tip: AppLocalizations.of(context)!.tipSilverAppBar,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text:
                    AppLocalizations.of(context)!.menuWidgetAdvancedSilverGrid,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetSilverGrid,
                    title: AppLocalizations.of(context)!
                        .menuWidgetAdvancedSilverGrid,
                    widget: const SnippetSilverGrid(),
                    tip: AppLocalizations.of(context)!.tipSilverGrid,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetAdvancedNavigator,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetNavigator,
                    title: AppLocalizations.of(context)!
                        .menuWidgetAdvancedNavigator,
                    widget: const SnippetNavigator(),
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
                    data: AppConstants.txtSnippetWidgetNavigatorWithArguments,
                    title: AppLocalizations.of(context)!
                        .menuWidgetAdvancedNavigatorWithArguments,
                    widget: const SnippetNavigatorWithArguments(),
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!
                    .menuWidgetAdvancedSendDataToScreen,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetSendDataToScreen,
                    title: AppLocalizations.of(context)!
                        .menuWidgetAdvancedSendDataToScreen,
                    widget: const SnippetSendDataToScreen(),
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
                    data: AppConstants.txtSnippetWidgetPopupMenuButton,
                    title: AppLocalizations.of(context)!
                        .menuWidgetAdvancedPopupMenuButton,
                    widget: const SnippetPopupMenuButton(),
                    tip: AppLocalizations.of(context)!.tipPopupMenuButton,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetAdvancedTabs,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetTabs,
                    title: AppLocalizations.of(context)!.menuWidgetAdvancedTabs,
                    widget: const SnippetTabs(),
                    tip: AppLocalizations.of(context)!.tipTabs,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetAdvancedClipPath,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                      data: AppConstants.txtSnippetWidgetClipPath,
                      title: AppLocalizations.of(context)!
                          .menuWidgetAdvancedClipPath,
                      widget: const SnippetClipPath(),
                      tip: AppLocalizations.of(context)!.tipClipPath),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetAdvancedSlider,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetSlider,
                    title:
                        AppLocalizations.of(context)!.menuWidgetAdvancedSlider,
                    widget: const SnippetSlider(),
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
                    data: AppConstants.txtSnippetWidgetListViewWithSearch,
                    title: AppLocalizations.of(context)!
                        .menuWidgetAdvancedListViewWithSearch,
                    widget: const SnippetListViewWithSearch(),
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetAdvancedChip,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetChip,
                    title: AppLocalizations.of(context)!.menuWidgetAdvancedChip,
                    widget: const SnippetChip(),
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
                    data: AppConstants.txtSnippetWidgetImageLoadingBuilder,
                    title: AppLocalizations.of(context)!
                        .menuWidgetAdvancedImageLoadingBuilder,
                    widget: const SnippetImageLoadingBuilder(),
                    tip: AppLocalizations.of(context)!.tipImageLoadingBuilder,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text:
                    AppLocalizations.of(context)!.menuWidgetAdvancedMouseRegion,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetMouseRegion,
                    title: AppLocalizations.of(context)!
                        .menuWidgetAdvancedMouseRegion,
                    widget: const SnippetMouseRegion(),
                    tip: AppLocalizations.of(context)!.tipMouseRegion,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!
                    .menuWidgetAdvancedLayoutBuilder,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetLayoutBuilder,
                    title: AppLocalizations.of(context)!
                        .menuWidgetAdvancedLayoutBuilder,
                    widget: const SnippetLayoutBuilder(),
                    tip: AppLocalizations.of(context)!.tipLayoutBuilder,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!
                    .menuWidgetAdvancedBottomNavigationBar,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetBottomNavigationBar,
                    title: AppLocalizations.of(context)!
                        .menuWidgetAdvancedBottomNavigationBar,
                    widget: const SnippetBottomNavigationBar(),
                    tip: AppLocalizations.of(context)!.tipBottomNavigationBar,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!
                    .menuWidgetAdvancedExpansionPanel,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetExpansionPanel,
                    title: AppLocalizations.of(context)!
                        .menuWidgetAdvancedExpansionPanel,
                    widget: const SnippetExpansionPanel(),
                    tip: AppLocalizations.of(context)!.tipExpansionPanel,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetAdvancedPaint,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetPaint,
                    title:
                        AppLocalizations.of(context)!.menuWidgetAdvancedPaint,
                    widget: const SnippetPaint(),
                    tip: AppLocalizations.of(context)!.tipPaint,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetAdvancedLoadJson,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetLoadJson,
                    title: AppLocalizations.of(context)!
                        .menuWidgetAdvancedLoadJson,
                    widget: const SnippetLoadJson(),
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetAdvancedClipboard,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetClipboard,
                    title: AppLocalizations.of(context)!
                        .menuWidgetAdvancedClipboard,
                    widget: const SnippetClipboard(),
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
                    data: AppConstants.txtSnippetWidgetPageRouteBuilder,
                    title: AppLocalizations.of(context)!
                        .menuWidgetAdvancedPageRouteBuilder,
                    widget: const SnippetPageRouteBuilder(),
                    tip: AppLocalizations.of(context)!.tipPageRouteBuilder,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetAdvancedLoadTxt,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetLoadTxt,
                    title:
                        AppLocalizations.of(context)!.menuWidgetAdvancedLoadTxt,
                    widget: const SnippetLoadTxt(),
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
                    widget: const SnippetIndexedStack(),
                    tip: AppLocalizations.of(context)!.tipIndexedStack,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!
                    .menuWidgetAdvancedScrollController,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetScrollController,
                    title: AppLocalizations.of(context)!
                        .menuWidgetAdvancedScrollController,
                    widget: const SnippetScrollController(),
                    tip: AppLocalizations.of(context)!.tipScrollController,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!
                    .menuWidgetAdvancedPageTransition,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetPageTransition,
                    title: AppLocalizations.of(context)!
                        .menuWidgetAdvancedPageTransition,
                    widget: const SnippetPageTransition(),
                  ),
                ),
              ),
            ],
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
                text: AppLocalizations.of(context)!.menuWidgetAppStopwatch,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetStopwtach,
                    title: AppLocalizations.of(context)!.menuWidgetAppStopwatch,
                    widget: const SnippetStopwatch(),
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuWidgetAppCountdown,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetCountdown,
                    title: AppLocalizations.of(context)!.menuWidgetAppCountdown,
                    widget: const SnippetCountdown(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      AppMenu(
        text: AppLocalizations.of(context)!.menuAnimation,
        icon: Icons.play_arrow,
        onPressed: () => Navigator.of(context).pushNamed(
          AppRoutes.snippetFilter,
          arguments: SnippetFilterModel(
            title: AppLocalizations.of(context)!.menuAnimation,
            snippets: [
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuAnimationAnimationIcon,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetAnimationIcon,
                    title: AppLocalizations.of(context)!
                        .menuAnimationAnimationIcon,
                    widget: const SnippetAnimationIcon(),
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!
                    .menuAnimationAnimatedContainer,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetAnimatedContainer,
                    title: AppLocalizations.of(context)!
                        .menuAnimationAnimatedContainer,
                    widget: const SnippetAnimatedContainer(),
                    tip: AppLocalizations.of(context)!.tipAnimatedContainer,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text:
                    AppLocalizations.of(context)!.menuAnimationAnimatedOpacity,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetAnimatedOpacity,
                    title: AppLocalizations.of(context)!
                        .menuAnimationAnimatedOpacity,
                    widget: const SnippetAnimatedOpacity(),
                    tip: AppLocalizations.of(context)!.tipAnimatedOpacity,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!
                    .menuAnimationAnimatedCrossFade,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetAnimatedCrossFade,
                    title: AppLocalizations.of(context)!
                        .menuAnimationAnimatedCrossFade,
                    widget: const SnippetAnimatedCrossFade(),
                    tip: AppLocalizations.of(context)!.tipAnimatedCrossFade,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!
                    .menuAnimationAnimatedDefaultTextStyle,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetAnimatedDefaultTextStyle,
                    title: AppLocalizations.of(context)!
                        .menuAnimationAnimatedDefaultTextStyle,
                    widget: const SnippetAnimatedDefaultTextStyle(),
                    tip: AppLocalizations.of(context)!
                        .tipAnimatedDefaultTextStyle,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuAnimationCustomPaint,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetCustomPaint,
                    title:
                        AppLocalizations.of(context)!.menuAnimationCustomPaint,
                    widget: const SnippetCustomPaint(),
                    tip: AppLocalizations.of(context)!.tipCustomPaint,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuAnimationRotatingCircle,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetRotatingCircle,
                    title: AppLocalizations.of(context)!
                        .menuAnimationRotatingCircle,
                    widget: const SnippetRotatingCircle(),
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuAnimationMatrix,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetMatrix,
                    title: AppLocalizations.of(context)!.menuAnimationMatrix,
                    widget: const SnippetMatrix(),
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!
                    .menuAnimationDraggableScrollableSheet,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetDraggableScrollableSheet,
                    title: AppLocalizations.of(context)!
                        .menuAnimationDraggableScrollableSheet,
                    widget: const SnippetDraggableScrollableSheet(),
                    tip: AppLocalizations.of(context)!
                        .tipDraggableScrollableSheet,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuAnimationAnimatedImage,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetAnimatedImage,
                    title: AppLocalizations.of(context)!
                        .menuAnimationAnimatedImage,
                    widget: const SnippetAnimatedImage(),
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuAnimationHero,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetHero,
                    title: AppLocalizations.of(context)!.menuAnimationHero,
                    widget: const SnippetHero(),
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuAnimationFadeInImage,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetFadeInImage,
                    title:
                        AppLocalizations.of(context)!.menuAnimationFadeInImage,
                    widget: const SnippetFadeInImage(),
                    tip: AppLocalizations.of(context)!.tipFadeInImage,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text: AppLocalizations.of(context)!.menuAnimationFadeTransition,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetFadeTransition,
                    title: AppLocalizations.of(context)!
                        .menuAnimationFadeTransition,
                    widget: const SnippetFadeTransition(),
                    tip: AppLocalizations.of(context)!.tipFadeTransition,
                  ),
                ),
              ),
              SnippetFilterListModel(
                text:
                    AppLocalizations.of(context)!.menuAnimationAnimatedSwitcher,
                onPressed: () => Navigator.of(context).pushNamed(
                  AppRoutes.snippetShow,
                  arguments: SnippetShowModel(
                    data: AppConstants.txtSnippetWidgetAnimatedSwitcher,
                    title: AppLocalizations.of(context)!
                        .menuAnimationAnimatedSwitcher,
                    widget: const SnippetAnimatedSwitcher(),
                    tip: AppLocalizations.of(context)!.tipAnimatedSwitcher,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    };
  }
}
