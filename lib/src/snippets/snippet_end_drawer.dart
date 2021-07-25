import 'package:flutter/material.dart';

class SnippetEndDrawer extends StatelessWidget {
  const SnippetEndDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clique no ícone'),
        automaticallyImplyLeading: false,
      ),
      endDrawer: Drawer(
        child: ListView.builder(itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(Icons.list),
            title: Text('Item $index'),
            trailing: Icon(Icons.done),
          );
        }),
      ),
      body: Center(
        child: Text(
          'endDrawer',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
