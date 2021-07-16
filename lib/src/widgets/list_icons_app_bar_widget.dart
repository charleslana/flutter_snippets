import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/widgets/change_theme_button_widget.dart';
import 'package:flutter_snippets/src/widgets/language_picker_widget.dart';

class ListIconsAppBarWidget {
  List<Widget> _listWidgets = [
    ChangeThemeButtonWidget(),
    LanguagePickerWidget(),
  ];

  List<Widget> get listWidgets => _listWidgets;
}
