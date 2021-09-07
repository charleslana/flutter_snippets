import 'package:flutter/material.dart';

class SnippetWillPopScope extends StatelessWidget {
  const SnippetWillPopScope({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute<dynamic>(
                builder: (context) =>
                    const SnippetWillPopScopeMyAppMaterialPage()),
          ),
          child: const Text('Go to login'),
        ),
      ),
    );
  }
}

class SnippetWillPopScopeMyAppMaterialPage extends StatefulWidget {
  const SnippetWillPopScopeMyAppMaterialPage({Key? key}) : super(key: key);

  @override
  _SnippetWillPopScopeMyAppMaterialPageState createState() =>
      _SnippetWillPopScopeMyAppMaterialPageState();
}

class _SnippetWillPopScopeMyAppMaterialPageState
    extends State<SnippetWillPopScopeMyAppMaterialPage> {
  late TextEditingController _userController;
  late TextEditingController _passwordController;

  Future<bool?> _showWarning(BuildContext context) async => showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Do you want to exit app?'),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('No'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text('Yes'),
            ),
          ],
        ),
      );

  @override
  void initState() {
    _userController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _userController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_userController.text.isNotEmpty ||
            _passwordController.text.isNotEmpty) {
          final bool? shouldPop = await _showWarning(context);

          return shouldPop ?? false;
        }

        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Edit text and click do back'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('User'),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _userController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text('Password'),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
