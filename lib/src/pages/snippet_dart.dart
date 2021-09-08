import 'package:flutter/material.dart';
import 'package:flutter_snippets/src/data/data_dart.dart';
import 'package:flutter_snippets/src/widgets/app_custom_bar.dart';

class SnippetDart extends StatelessWidget {
  const SnippetDart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const AppCustomBar(title: 'Dart'),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Stack(
            children: [
              ListView(
                physics: const BouncingScrollPhysics(),
                children: List.generate(
                  getDataDart(context).length,
                  (index) {
                    return getDataDart(context).elementAt(index);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
