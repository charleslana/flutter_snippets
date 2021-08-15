import 'package:flutter/material.dart';

class SnippetDrawer extends StatelessWidget {
  const SnippetDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> key = GlobalKey();

    return Scaffold(
      drawerEnableOpenDragGesture: false,
      key: key,
      body: Center(
        child: ElevatedButton(
          onPressed: () => key.currentState!.openDrawer(),
          child: const Text('Open Drawer'),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Test'),
              accountEmail: Text('test@test'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  'T',
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.star),
              title: const Text('Text 1'),
              subtitle: const Text('Text 1'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('Text 2'),
              subtitle: const Text('Text 2'),
              trailing: const Icon(Icons.arrow_forward),
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
