import 'package:flutter/material.dart';

class SnippetListView extends StatelessWidget {
  const SnippetListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Mapa'),
            trailing: Icon(Icons.settings),
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Álbum'),
            trailing: Icon(Icons.settings),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Fone'),
            trailing: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
