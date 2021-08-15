import 'package:flutter/material.dart';

class SnippetListView extends StatelessWidget {
  const SnippetListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Map'),
            trailing: Icon(Icons.settings),
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Album'),
            trailing: Icon(Icons.settings),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
            trailing: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
