import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/components/app_bottom_navigation_bar.dart';
import 'package:flutter_snippets/src/models/snippet_filter_model.dart';

class SnippetFilter extends StatelessWidget {
  const SnippetFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SnippetFilterModel filter =
        ModalRoute.of(context)!.settings.arguments as SnippetFilterModel;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(filter.title),
        ),
        body: Wrap(
          children: List.generate(filter.snippets.length, (index) {
            final item = filter.snippets[index];

            return Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextButton(
                onPressed: item.onPressed,
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.blue,
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: Text(
                    item.text,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
        bottomNavigationBar: AppBottomNavigationBar(
          index: filter.bottomNavigationBarIndex,
        ),
      ),
    );
  }
}
