import 'package:flutter/material.dart';

class SnippetScrollbar extends StatelessWidget {
  const SnippetScrollbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: GridView.builder(
          itemCount: 120,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: Text('item $index'),
            );
          },
        ),
      ),
    );
  }
}
