import 'package:flutter/material.dart';

class SnippetEndDrawer extends StatelessWidget {
  const SnippetEndDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tap the icon'),
        automaticallyImplyLeading: false,
      ),
      endDrawer: Drawer(
        child: ListView.builder(itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: const Icon(Icons.list),
            title: Text('Item $index'),
            trailing: const Icon(Icons.done),
          );
        }),
      ),
    );
  }
}
