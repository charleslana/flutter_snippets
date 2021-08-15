import 'dart:math';

import 'package:flutter/material.dart';

class SnippetSilverGrid extends StatelessWidget {
  const SnippetSilverGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                height: 150,
              );
            }),
          ),
        ],
      ),
    );
  }
}
