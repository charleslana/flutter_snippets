import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/data/data_widget.dart';
import 'package:flutter_snippets/src/widgets/app_bottom_navigation_bar.dart';
import 'package:flutter_snippets/src/widgets/app_custom_bar.dart';
import 'package:flutter_snippets/src/widgets/app_floating_action_button.dart';

class SnippetWidgets extends StatelessWidget {
  const SnippetWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const AppCustomBar(title: 'Widgets'),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: const AppFloatingActionButton(),
        bottomNavigationBar: const AppBottomNavigationBar(),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: List.generate(
              getDataWidget(context).length,
              (index) {
                return getDataWidget(context).elementAt(index);
              },
            ),
          ),
        ),
      ),
    );
  }
}
