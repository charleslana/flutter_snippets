import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_snippets/src/constants/app_constants.dart';
import 'package:flutter_snippets/src/models/snippet_filter_list_model.dart';
import 'package:flutter_snippets/src/models/snippet_filter_model.dart';
import 'package:flutter_snippets/src/models/snippet_show_model.dart';
import 'package:flutter_snippets/src/routes/app_routes.dart';
import 'package:flutter_snippets/src/snippets/snippet_absorb_pointer.dart';
import 'package:flutter_snippets/src/snippets/snippet_action_chip.dart';
import 'package:flutter_snippets/src/snippets/snippet_align.dart';
import 'package:flutter_snippets/src/snippets/snippet_animated_container.dart';
import 'package:flutter_snippets/src/snippets/snippet_animated_cross_fade.dart';
import 'package:flutter_snippets/src/snippets/snippet_animated_default_text_style.dart';
import 'package:flutter_snippets/src/snippets/snippet_animated_image.dart';
import 'package:flutter_snippets/src/snippets/snippet_animated_opacity.dart';
import 'package:flutter_snippets/src/snippets/snippet_animated_switcher.dart';
import 'package:flutter_snippets/src/snippets/snippet_animation_icon.dart';
import 'package:flutter_snippets/src/snippets/snippet_aspect_ratio.dart';
import 'package:flutter_snippets/src/snippets/snippet_autocomplete.dart';
import 'package:flutter_snippets/src/snippets/snippet_backdrop_filter.dart';
import 'package:flutter_snippets/src/snippets/snippet_banner.dart';
import 'package:flutter_snippets/src/snippets/snippet_baseline.dart';
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
import 'package:flutter_snippets/src/snippets/snippet_container.dart';
import 'package:flutter_snippets/src/snippets/snippet_container_transform.dart';
import 'package:flutter_snippets/src/snippets/snippet_countdown.dart';
import 'package:flutter_snippets/src/snippets/snippet_custom_paint.dart';
import 'package:flutter_snippets/src/snippets/snippet_data_table.dart';
import 'package:flutter_snippets/src/snippets/snippet_data_table_with_sort.dart';
import 'package:flutter_snippets/src/snippets/snippet_date_picker.dart';
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
import 'package:flutter_snippets/src/snippets/snippet_expand_icon.dart';
import 'package:flutter_snippets/src/snippets/snippet_expanded.dart';
import 'package:flutter_snippets/src/snippets/snippet_expansion_panel.dart';
import 'package:flutter_snippets/src/snippets/snippet_expansion_panel_list.dart';
import 'package:flutter_snippets/src/snippets/snippet_expansion_tile.dart';
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
import 'package:flutter_snippets/src/snippets/snippet_haptic_feedback.dart';
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
import 'package:flutter_snippets/src/snippets/snippet_linear_gradient.dart';
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
import 'package:flutter_snippets/src/snippets/snippet_on_generate_route.dart';
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
import 'package:flutter_snippets/src/snippets/snippet_push_named.dart';
import 'package:flutter_snippets/src/snippets/snippet_radio_list_tile.dart';
import 'package:flutter_snippets/src/snippets/snippet_raw_string.dart';
import 'package:flutter_snippets/src/snippets/snippet_refresh_indicator.dart';
import 'package:flutter_snippets/src/snippets/snippet_rich_text.dart';
import 'package:flutter_snippets/src/snippets/snippet_rotated_box.dart';
import 'package:flutter_snippets/src/snippets/snippet_rotating_circle.dart';
import 'package:flutter_snippets/src/snippets/snippet_row.dart';
import 'package:flutter_snippets/src/snippets/snippet_safe_area.dart';
import 'package:flutter_snippets/src/snippets/snippet_scroll_controller.dart';
import 'package:flutter_snippets/src/snippets/snippet_scroll_to_bottom_or_top.dart';
import 'package:flutter_snippets/src/snippets/snippet_scrollbar.dart';
import 'package:flutter_snippets/src/snippets/snippet_selectable_text.dart';
import 'package:flutter_snippets/src/snippets/snippet_send_data_to_screen.dart';
import 'package:flutter_snippets/src/snippets/snippet_shader_mask.dart';
import 'package:flutter_snippets/src/snippets/snippet_shape_decoration.dart';
import 'package:flutter_snippets/src/snippets/snippet_single_child_scroll_view.dart';
import 'package:flutter_snippets/src/snippets/snippet_sized_box.dart';
import 'package:flutter_snippets/src/snippets/snippet_slider.dart';
import 'package:flutter_snippets/src/snippets/snippet_sliver_app_bar.dart';
import 'package:flutter_snippets/src/snippets/snippet_sliver_grid.dart';
import 'package:flutter_snippets/src/snippets/snippet_snack_bar.dart';
import 'package:flutter_snippets/src/snippets/snippet_spacer.dart';
import 'package:flutter_snippets/src/snippets/snippet_splash_screen.dart';
import 'package:flutter_snippets/src/snippets/snippet_stack.dart';
import 'package:flutter_snippets/src/snippets/snippet_stateful.dart';
import 'package:flutter_snippets/src/snippets/snippet_stateless.dart';
import 'package:flutter_snippets/src/snippets/snippet_stepper.dart';
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
import 'package:flutter_snippets/src/snippets/snippet_toggle_buttons.dart';
import 'package:flutter_snippets/src/snippets/snippet_tooltip.dart';
import 'package:flutter_snippets/src/snippets/snippet_transform.dart';
import 'package:flutter_snippets/src/snippets/snippet_vertical_divider.dart';
import 'package:flutter_snippets/src/snippets/snippet_visibility.dart';
import 'package:flutter_snippets/src/snippets/snippet_will_pop_scope.dart';
import 'package:flutter_snippets/src/widgets/app_menu.dart';

Set<AppMenu> getDataWidget(BuildContext context) {
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
                  data: AppConstants.txtWidgetStateless,
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
                  data: AppConstants.txtWidgetStateful,
                  title: AppLocalizations.of(context)!.menuWidgetCreateStateful,
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
      icon: Icons.apps,
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
                  data: AppConstants.txtWidgetSafeArea,
                  title: AppLocalizations.of(context)!.menuWidgetBasicSafeArea,
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
                  data: AppConstants.txtWidgetCircularProgressIndicator,
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
                  data: AppConstants.txtWidgetContainer,
                  title: AppLocalizations.of(context)!.menuWidgetBasicContainer,
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
                  data: AppConstants.txtWidgetText,
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
                  data: AppConstants.txtWidgetTextOverflow,
                  title:
                      AppLocalizations.of(context)!.menuWidgetBasicTextOverflow,
                  widget: const SnippetTextOverflow(),
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuWidgetBasicTextStyle,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetTextStyle,
                  title: AppLocalizations.of(context)!.menuWidgetBasicTextStyle,
                  widget: const SnippetTextStyle(),
                ),
              ),
            ),
            SnippetFilterListModel(
              text:
                  AppLocalizations.of(context)!.menuWidgetBasicTextDefaultStyle,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetTextDefaultStyle,
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
                  data: AppConstants.txtWidgetRichText,
                  title: AppLocalizations.of(context)!.menuWidgetBasicRichText,
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
                  data: AppConstants.txtWidgetColumn,
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
                  data: AppConstants.txtWidgetRow,
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
                  data: AppConstants.txtWidgetDivider,
                  title: AppLocalizations.of(context)!.menuWidgetBasicDivider,
                  widget: const SnippetDivider(),
                  tip: AppLocalizations.of(context)!.tipDivider,
                ),
              ),
            ),
            SnippetFilterListModel(
              text:
                  AppLocalizations.of(context)!.menuWidgetBasicVerticalDivider,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetVerticalDivider,
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
                  data: AppConstants.txtWidgetTextButton,
                  title:
                      AppLocalizations.of(context)!.menuWidgetBasicTextButton,
                  widget: const SnippetTextButton(),
                  tip: AppLocalizations.of(context)!.tipButton,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuWidgetBasicElevatedButton,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetElevatedButton,
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
                  data: AppConstants.txtWidgetElevatedButtonIcon,
                  title: AppLocalizations.of(context)!
                      .menuWidgetBasicElevatedButtonIcon,
                  widget: const SnippetElevatedButtonIcon(),
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuWidgetBasicOutlinedButton,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetOutlinedButton,
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
                  data: AppConstants.txtWidgetIcon,
                  title: AppLocalizations.of(context)!.menuWidgetBasicIcon,
                  widget: const SnippetIcon(),
                  tip: AppLocalizations.of(context)!.tipIcon,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuWidgetBasicIconBackground,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetIconBackground,
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
                  data: AppConstants.txtWidgetImage,
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
                  data: AppConstants.txtWidgetBottomSheet,
                  title:
                      AppLocalizations.of(context)!.menuWidgetBasicBottomSheet,
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
                  data: AppConstants.txtWidgetMediaQuery,
                  title:
                      AppLocalizations.of(context)!.menuWidgetBasicMediaQuery,
                  widget: const SnippetMediaQuery(),
                  tip: AppLocalizations.of(context)!.tipMediaQuery,
                ),
              ),
            ),
            SnippetFilterListModel(
              text:
                  AppLocalizations.of(context)!.menuWidgetBasicGestureDetector,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetGestureDetector,
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
                  data: AppConstants.txtWidgetInkWell,
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
                  data: AppConstants.txtWidgetCard,
                  title: AppLocalizations.of(context)!.menuWidgetBasicCard,
                  widget: const SnippetCard(),
                  tip: AppLocalizations.of(context)!.tipCard,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuWidgetBasicFutureBuilder,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetFutureBuilder,
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
                  data: AppConstants.txtWidgetStack,
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
                  data: AppConstants.txtWidgetPageView,
                  title: AppLocalizations.of(context)!.menuWidgetBasicPageView,
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
                  data: AppConstants.txtWidgetTable,
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
                  data: AppConstants.txtWidgetSnackBar,
                  title: AppLocalizations.of(context)!.menuWidgetBasicSnackBar,
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
                  data: AppConstants.txtWidgetDialog,
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
                  data: AppConstants.txtWidgetListView,
                  title: AppLocalizations.of(context)!.menuWidgetBasicListView,
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
                  data: AppConstants.txtWidgetRotatedBox,
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
                  data: AppConstants.txtWidgetClipRect,
                  title: AppLocalizations.of(context)!.menuWidgetBasicClipRect,
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
                  data: AppConstants.txtWidgetClipRRect,
                  title: AppLocalizations.of(context)!.menuWidgetBasicClipRRect,
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
                  data: AppConstants.txtWidgetClipOval,
                  title: AppLocalizations.of(context)!.menuWidgetBasicClipOval,
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
                  data: AppConstants.txtWidgetFlexible,
                  title: AppLocalizations.of(context)!.menuWidgetBasicFlexible,
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
                  data: AppConstants.txtWidgetExpanded,
                  title: AppLocalizations.of(context)!.menuWidgetBasicExpanded,
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
                  data: AppConstants.txtWidgetCircleAvatar,
                  title:
                      AppLocalizations.of(context)!.menuWidgetBasicCircleAvatar,
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
                  data: AppConstants.txtWidgetFittedBox,
                  title: AppLocalizations.of(context)!.menuWidgetBasicFittedBox,
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
                  data: AppConstants.txtWidgetVisibility,
                  title:
                      AppLocalizations.of(context)!.menuWidgetBasicVisibility,
                  widget: const SnippetVisibility(),
                  tip: AppLocalizations.of(context)!.tipVisibility,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuWidgetBasicBoxDecoration,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetBoxDecoration,
                  title: AppLocalizations.of(context)!
                      .menuWidgetBasicBoxDecoration,
                  widget: const SnippetBoxDecoration(),
                  tip: AppLocalizations.of(context)!.tipBoxDecoration,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuWidgetBasicSelectableText,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetSelectableText,
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
                  data: AppConstants.txtWidgetInteractiveViewer,
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
                  data: AppConstants.txtWidgetAspectRatio,
                  title:
                      AppLocalizations.of(context)!.menuWidgetBasicAspectRatio,
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
                  data: AppConstants.txtWidgetPlaceholder,
                  title:
                      AppLocalizations.of(context)!.menuWidgetBasicPlaceholder,
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
                  data: AppConstants.txtWidgetSpacer,
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
                  data: AppConstants.txtWidgetListWheelScrollView,
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
                  data: AppConstants.txtWidgetOpacity,
                  title: AppLocalizations.of(context)!.menuWidgetBasicOpacity,
                  widget: const SnippetOpacity(),
                  tip: AppLocalizations.of(context)!.tipOpacity,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuWidgetBasicConstrainedBox,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetConstrainedBox,
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
                  data: AppConstants.txtWidgetAlign,
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
                  data: AppConstants.txtWidgetPadding,
                  title: AppLocalizations.of(context)!.menuWidgetBasicPadding,
                  widget: const SnippetPadding(),
                  tip: AppLocalizations.of(context)!.tipPadding,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuWidgetBasicAbsorbPointer,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetAbsorbPointer,
                  title: AppLocalizations.of(context)!
                      .menuWidgetBasicAbsorbPointer,
                  widget: const SnippetAbsorbPointer(),
                  tip: AppLocalizations.of(context)!.tipAbsorbPointer,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuWidgetBasicIgnorePointer,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetIgnorePointer,
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
                  data: AppConstants.txtWidgetTooltip,
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
                  data: AppConstants.txtWidgetColors,
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
                  data: AppConstants.txtWidgetFlutterLogo,
                  title:
                      AppLocalizations.of(context)!.menuWidgetBasicFlutterLogo,
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
                  data: AppConstants.txtWidgetSizedBox,
                  title: AppLocalizations.of(context)!.menuWidgetBasicSizedBox,
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
                  data: AppConstants.txtWidgetFloatingActionButton,
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
                  data: AppConstants.txtWidgetCheckbox,
                  title: AppLocalizations.of(context)!.menuWidgetBasicCheckbox,
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
                  data: AppConstants.txtWidgetEndDrawer,
                  title: AppLocalizations.of(context)!.menuWidgetBasicEndDrawer,
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
                  data: AppConstants.txtWidgetContainerTransform,
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
                  data: AppConstants.txtWidgetTransform,
                  title: AppLocalizations.of(context)!.menuWidgetBasicTransform,
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
                  data: AppConstants.txtWidgetBanner,
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
                  data: AppConstants.txtWidgetBorderRadius,
                  title:
                      AppLocalizations.of(context)!.menuWidgetBasicBorderRadius,
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
                  data: AppConstants.txtWidgetSingleChildScrollView,
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
                  data: AppConstants.txtWidgetBoxShadow,
                  title: AppLocalizations.of(context)!.menuWidgetBasicBoxShadow,
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
                  data: AppConstants.txtWidgetShaderMask,
                  title:
                      AppLocalizations.of(context)!.menuWidgetBasicShaderMask,
                  widget: const SnippetShaderMask(),
                  tip: AppLocalizations.of(context)!.tipShaderMask,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuWidgetBasicColorFiltered,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetColorFiltered,
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
                  data: AppConstants.txtWidgetDataTable,
                  title: AppLocalizations.of(context)!.menuWidgetBasicDataTable,
                  widget: const SnippetDataTable(),
                  tip: AppLocalizations.of(context)!.tipDataTable,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuWidgetBasicImageFiltered,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetImageFiltered,
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
                  data: AppConstants.txtWidgetPositioned,
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
                  data: AppConstants.txtWidgetLinearProgressIndicator,
                  title: AppLocalizations.of(context)!
                      .menuWidgetBasicLinearProgressIndicator,
                  widget: const SnippetLinearProgressIndicator(),
                  tip: AppLocalizations.of(context)!.tipLinearProgressIndicator,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuWidgetBasicRawString,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetRawString,
                  title: AppLocalizations.of(context)!.menuWidgetBasicRawString,
                  widget: const SnippetRawString(),
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuWidgetBasicLimitedBox,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                    data: AppConstants.txtWidgetLimitedBox,
                    title:
                        AppLocalizations.of(context)!.menuWidgetBasicLimitedBox,
                    widget: const SnippetLimitedBox(),
                    tip: AppLocalizations.of(context)!.tipLimitedBox),
              ),
            ),
            SnippetFilterListModel(
              text:
                  AppLocalizations.of(context)!.menuWidgetBasicCheckboxListTile,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetCheckboxListTile,
                  title: AppLocalizations.of(context)!
                      .menuWidgetBasicCheckboxListTile,
                  widget: const SnippetCheckboxListTile(),
                  tip: AppLocalizations.of(context)!.tipCheckboxListTile,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuWidgetBasicSwitchListTile,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetSwitchListTile,
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
                  data: AppConstants.txtWidgetExpansionPanelList,
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
                  data: AppConstants.txtWidgetFractionallySizedBox,
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
                  data: AppConstants.txtWidgetScrollbar,
                  title: AppLocalizations.of(context)!.menuWidgetBasicScrollbar,
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
                  data: AppConstants.txtWidgetOverflowBox,
                  title:
                      AppLocalizations.of(context)!.menuWidgetBasicOverflowBox,
                  widget: const SnippetOverflowBox(),
                  tip: AppLocalizations.of(context)!.tipOverflowBox,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuWidgetBasicRadioListTile,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetRadioListTile,
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
                  data: AppConstants.txtWidgetTextField,
                  title: AppLocalizations.of(context)!.menuWidgetBasicTextField,
                  widget: const SnippetTextField(),
                  tip: AppLocalizations.of(context)!.tipTextField,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuWidgetBasicHapticFeedback,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetHapticFeedback,
                  title: AppLocalizations.of(context)!
                      .menuWidgetBasicHapticFeedback,
                  widget: const SnippetHapticFeedback(),
                ),
              ),
              isNew: true,
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!
                  .menuWidgetBasicDataTableWithSort,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetDataTableWithSort,
                  title: AppLocalizations.of(context)!
                      .menuWidgetBasicDataTableWithSort,
                  widget: const SnippetDataTableWithSort(),
                ),
              ),
              isNew: true,
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuWidgetBasicExpansionTile,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetExpansionTile,
                  title: AppLocalizations.of(context)!
                      .menuWidgetBasicExpansionTile,
                  widget: const SnippetExpansionTile(),
                ),
              ),
              isNew: true,
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuWidgetBasicLinearGradient,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetLinearGradient,
                  title: AppLocalizations.of(context)!
                      .menuWidgetBasicLinearGradient,
                  widget: const SnippetLinearGradient(),
                ),
              ),
              isNew: true,
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuWidgetBasicBaseline,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetBaseline,
                  title: AppLocalizations.of(context)!.menuWidgetBasicBaseline,
                  widget: const SnippetBaseline(),
                ),
              ),
              isNew: true,
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuWidgetBasicActionChip,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetActionChip,
                  title:
                      AppLocalizations.of(context)!.menuWidgetBasicActionChip,
                  widget: const SnippetActionChip(),
                ),
              ),
              isNew: true,
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuWidgetBasicBackdropFilter,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetBackdropFilter,
                  title: AppLocalizations.of(context)!
                      .menuWidgetBasicBackdropFilter,
                  widget: const SnippetBackdropFilter(),
                ),
              ),
              isNew: true,
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuWidgetBasicExpandIcon,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetExpandIcon,
                  title:
                      AppLocalizations.of(context)!.menuWidgetBasicExpandIcon,
                  widget: const SnippetExpandIcon(),
                ),
              ),
              isNew: true,
            ),
            SnippetFilterListModel(
              text:
                  AppLocalizations.of(context)!.menuWidgetBasicShapeDecoration,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetShapeDecoration,
                  title: AppLocalizations.of(context)!
                      .menuWidgetBasicShapeDecoration,
                  widget: const SnippetShapeDecoration(),
                ),
              ),
              isNew: true,
            ),
          ],
        ),
      ),
    ),
    AppMenu(
      text: AppLocalizations.of(context)!.menuWidgetAdvanced,
      icon: Icons.auto_awesome,
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
                  data: AppConstants.txtWidgetRefreshIndicator,
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
                  data: AppConstants.txtWidgetDraggable,
                  title:
                      AppLocalizations.of(context)!.menuWidgetAdvancedDraggable,
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
                  data: AppConstants.txtWidgetGlobalKey,
                  title:
                      AppLocalizations.of(context)!.menuWidgetAdvancedGlobalKey,
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
                  data: AppConstants.txtWidgetDrawer,
                  title: AppLocalizations.of(context)!.menuWidgetAdvancedDrawer,
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
                  data: AppConstants.txtWidgetDropdown,
                  title:
                      AppLocalizations.of(context)!.menuWidgetAdvancedDropdown,
                  widget: const SnippetDropdown(),
                  tip: AppLocalizations.of(context)!.tipDropdown,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuWidgetAdvancedDismissible,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetDismissible,
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
                  data: AppConstants.txtWidgetGridView,
                  title:
                      AppLocalizations.of(context)!.menuWidgetAdvancedGridView,
                  widget: const SnippetGridView(),
                  tip: AppLocalizations.of(context)!.tipGridView,
                ),
              ),
            ),
            SnippetFilterListModel(
              text:
                  AppLocalizations.of(context)!.menuWidgetAdvancedSliverAppBar,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetSliverAppBar,
                  title: AppLocalizations.of(context)!
                      .menuWidgetAdvancedSliverAppBar,
                  widget: const SnippetSliverAppBar(),
                  tip: AppLocalizations.of(context)!.tipSliverAppBar,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuWidgetAdvancedSliverGrid,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetSliverGrid,
                  title: AppLocalizations.of(context)!
                      .menuWidgetAdvancedSliverGrid,
                  widget: const SnippetSliverGrid(),
                  tip: AppLocalizations.of(context)!.tipSliverGrid,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuWidgetAdvancedNavigator,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetNavigator,
                  title:
                      AppLocalizations.of(context)!.menuWidgetAdvancedNavigator,
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
                  data: AppConstants.txtWidgetNavigatorWithArguments,
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
                  data: AppConstants.txtWidgetSendDataToScreen,
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
                  data: AppConstants.txtWidgetPopupMenuButton,
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
                  data: AppConstants.txtWidgetTabs,
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
                    data: AppConstants.txtWidgetClipPath,
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
                  data: AppConstants.txtWidgetSlider,
                  title: AppLocalizations.of(context)!.menuWidgetAdvancedSlider,
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
                  data: AppConstants.txtWidgetListViewWithSearch,
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
                  data: AppConstants.txtWidgetChip,
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
                  data: AppConstants.txtWidgetImageLoadingBuilder,
                  title: AppLocalizations.of(context)!
                      .menuWidgetAdvancedImageLoadingBuilder,
                  widget: const SnippetImageLoadingBuilder(),
                  tip: AppLocalizations.of(context)!.tipImageLoadingBuilder,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuWidgetAdvancedMouseRegion,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetMouseRegion,
                  title: AppLocalizations.of(context)!
                      .menuWidgetAdvancedMouseRegion,
                  widget: const SnippetMouseRegion(),
                  tip: AppLocalizations.of(context)!.tipMouseRegion,
                ),
              ),
            ),
            SnippetFilterListModel(
              text:
                  AppLocalizations.of(context)!.menuWidgetAdvancedLayoutBuilder,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetLayoutBuilder,
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
                  data: AppConstants.txtWidgetBottomNavigationBar,
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
                  data: AppConstants.txtWidgetExpansionPanel,
                  title: AppLocalizations.of(context)!
                      .menuWidgetAdvancedExpansionPanel,
                  widget: const SnippetExpansionPanel(),
                  tip: AppLocalizations.of(context)!.tipExpansionPanel,
                ),
              ),
              isUpdated: true,
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuWidgetAdvancedPaint,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetPaint,
                  title: AppLocalizations.of(context)!.menuWidgetAdvancedPaint,
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
                  data: AppConstants.txtWidgetLoadJson,
                  title:
                      AppLocalizations.of(context)!.menuWidgetAdvancedLoadJson,
                  widget: const SnippetLoadJson(),
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuWidgetAdvancedClipboard,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetClipboard,
                  title:
                      AppLocalizations.of(context)!.menuWidgetAdvancedClipboard,
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
                  data: AppConstants.txtWidgetPageRouteBuilder,
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
                  data: AppConstants.txtWidgetLoadTxt,
                  title:
                      AppLocalizations.of(context)!.menuWidgetAdvancedLoadTxt,
                  widget: const SnippetLoadTxt(),
                ),
              ),
            ),
            SnippetFilterListModel(
              text:
                  AppLocalizations.of(context)!.menuWidgetAdvancedIndexedStack,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetIndexedStack,
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
                  data: AppConstants.txtWidgetScrollController,
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
                  data: AppConstants.txtWidgetPageTransition,
                  title: AppLocalizations.of(context)!
                      .menuWidgetAdvancedPageTransition,
                  widget: const SnippetPageTransition(),
                ),
              ),
              isNew: true,
            ),
            SnippetFilterListModel(
              text:
                  AppLocalizations.of(context)!.menuWidgetAdvancedSplashScreen,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetSplashScreen,
                  title: AppLocalizations.of(context)!
                      .menuWidgetAdvancedSplashScreen,
                  widget: const SnippetSplashScreen(),
                ),
              ),
              isNew: true,
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuWidgetAdvancedPushNamed,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetPushNamed,
                  title:
                      AppLocalizations.of(context)!.menuWidgetAdvancedPushNamed,
                  widget: const SnippetPushNamed(),
                ),
              ),
              isNew: true,
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!
                  .menuWidgetAdvancedOnGenerateRoute,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetOnGenerateRoute,
                  title: AppLocalizations.of(context)!
                      .menuWidgetAdvancedOnGenerateRoute,
                  widget: const SnippetOnGenerateRoute(),
                ),
              ),
              isNew: true,
            ),
            SnippetFilterListModel(
              text:
                  AppLocalizations.of(context)!.menuWidgetAdvancedWillPopScope,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetWillPopScope,
                  title: AppLocalizations.of(context)!
                      .menuWidgetAdvancedWillPopScope,
                  widget: const SnippetWillPopScope(),
                ),
              ),
              isNew: true,
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuWidgetAdvancedStepper,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetStepper,
                  title:
                      AppLocalizations.of(context)!.menuWidgetAdvancedStepper,
                  widget: const SnippetStepper(),
                ),
              ),
              isNew: true,
            ),
            SnippetFilterListModel(
              text:
                  AppLocalizations.of(context)!.menuWidgetAdvancedToggleButtons,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetToggleButtons,
                  title: AppLocalizations.of(context)!
                      .menuWidgetAdvancedToggleButtons,
                  widget: const SnippetToggleButtons(),
                ),
              ),
              isNew: true,
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuWidgetAdvancedDatePicker,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetDatePicker,
                  title: AppLocalizations.of(context)!
                      .menuWidgetAdvancedDatePicker,
                  widget: const SnippetDatePicker(),
                ),
              ),
              isNew: true,
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!
                  .menuWidgetAdvancedScrollToBottomOrTop,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetScrollToBottomOrTop,
                  title: AppLocalizations.of(context)!
                      .menuWidgetAdvancedScrollToBottomOrTop,
                  widget: const SnippetScrollToBottomOrTop(),
                ),
              ),
              isNew: true,
            ),
            SnippetFilterListModel(
              text:
                  AppLocalizations.of(context)!.menuWidgetAdvancedAutocomplete,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetAutocomplete,
                  title: AppLocalizations.of(context)!
                      .menuWidgetAdvancedAutocomplete,
                  widget: const SnippetAutocomplete(),
                ),
              ),
              isNew: true,
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
                  data: AppConstants.txtWidgetStopwtach,
                  title: AppLocalizations.of(context)!.menuWidgetAppStopwatch,
                  widget: const SnippetStopwatch(),
                ),
              ),
              isUpdated: true,
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuWidgetAppCountdown,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetCountdown,
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
      icon: Icons.animation,
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
                  data: AppConstants.txtWidgetAnimationIcon,
                  title:
                      AppLocalizations.of(context)!.menuAnimationAnimationIcon,
                  widget: const SnippetAnimationIcon(),
                ),
              ),
            ),
            SnippetFilterListModel(
              text:
                  AppLocalizations.of(context)!.menuAnimationAnimatedContainer,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetAnimatedContainer,
                  title: AppLocalizations.of(context)!
                      .menuAnimationAnimatedContainer,
                  widget: const SnippetAnimatedContainer(),
                  tip: AppLocalizations.of(context)!.tipAnimatedContainer,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuAnimationAnimatedOpacity,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetAnimatedOpacity,
                  title: AppLocalizations.of(context)!
                      .menuAnimationAnimatedOpacity,
                  widget: const SnippetAnimatedOpacity(),
                  tip: AppLocalizations.of(context)!.tipAnimatedOpacity,
                ),
              ),
            ),
            SnippetFilterListModel(
              text:
                  AppLocalizations.of(context)!.menuAnimationAnimatedCrossFade,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetAnimatedCrossFade,
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
                  data: AppConstants.txtWidgetAnimatedDefaultTextStyle,
                  title: AppLocalizations.of(context)!
                      .menuAnimationAnimatedDefaultTextStyle,
                  widget: const SnippetAnimatedDefaultTextStyle(),
                  tip:
                      AppLocalizations.of(context)!.tipAnimatedDefaultTextStyle,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuAnimationCustomPaint,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetCustomPaint,
                  title: AppLocalizations.of(context)!.menuAnimationCustomPaint,
                  widget: const SnippetCustomPaint(),
                  tip: AppLocalizations.of(context)!.tipCustomPaint,
                ),
              ),
              isUpdated: true,
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuAnimationRotatingCircle,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetRotatingCircle,
                  title:
                      AppLocalizations.of(context)!.menuAnimationRotatingCircle,
                  widget: const SnippetRotatingCircle(),
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuAnimationMatrix,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetMatrix,
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
                  data: AppConstants.txtWidgetDraggableScrollableSheet,
                  title: AppLocalizations.of(context)!
                      .menuAnimationDraggableScrollableSheet,
                  widget: const SnippetDraggableScrollableSheet(),
                  tip:
                      AppLocalizations.of(context)!.tipDraggableScrollableSheet,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuAnimationAnimatedImage,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetAnimatedImage,
                  title:
                      AppLocalizations.of(context)!.menuAnimationAnimatedImage,
                  widget: const SnippetAnimatedImage(),
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuAnimationHero,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetHero,
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
                  data: AppConstants.txtWidgetFadeInImage,
                  title: AppLocalizations.of(context)!.menuAnimationFadeInImage,
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
                  data: AppConstants.txtWidgetFadeTransition,
                  title:
                      AppLocalizations.of(context)!.menuAnimationFadeTransition,
                  widget: const SnippetFadeTransition(),
                  tip: AppLocalizations.of(context)!.tipFadeTransition,
                ),
              ),
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuAnimationAnimatedSwitcher,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtWidgetAnimatedSwitcher,
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
    AppMenu(
      text: AppLocalizations.of(context)!.menuMain,
      icon: Icons.home,
      onPressed: () => Navigator.of(context).pushNamed(
        AppRoutes.snippetFilter,
        arguments: SnippetFilterModel(
          title: AppLocalizations.of(context)!.menuMain,
          snippets: [
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuMainDeviceOrientation,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtMainDeviceOrientation,
                  title:
                      AppLocalizations.of(context)!.menuMainDeviceOrientation,
                ),
              ),
              isNew: true,
            ),
            SnippetFilterListModel(
              text: AppLocalizations.of(context)!.menuMainSystemUIOverlayStyle,
              onPressed: () => Navigator.of(context).pushNamed(
                AppRoutes.snippetShow,
                arguments: SnippetShowModel(
                  data: AppConstants.txtMainSystemUIOverlayStyle,
                  title: AppLocalizations.of(context)!
                      .menuMainSystemUIOverlayStyle,
                ),
              ),
              isNew: true,
            ),
          ],
        ),
      ),
    ),
  };
}
