import 'package:flutter/material.dart';

class SnippetListViewBuilder extends StatelessWidget {
  const SnippetListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Headline',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: (_, int index) => Card(
                child: Center(
                  child: Text('Dummy Card Text $index'),
                ),
              ),
            ),
          ),
          const Text(
            'Headline 2',
            style: TextStyle(fontSize: 18),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: ListView.builder(
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (_, int index) => Card(
                  child: ListTile(
                    title: Text('Motivation $index'),
                    subtitle:
                        Text('this is a description of the motivation $index'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
