import 'package:flutter/material.dart';

class SnippetDrawer extends StatelessWidget {
  SnippetDrawer({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      key: _drawerKey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Drawer'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Abrir Drawer'),
          onPressed: () => _drawerKey.currentState!.openDrawer(),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Teste'),
              accountEmail: Text('teste@teste'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  'T',
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Texto'),
              subtitle: Text('Texto'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Texto 2'),
              subtitle: Text('Texto 2'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
