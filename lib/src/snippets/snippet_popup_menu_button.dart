import 'package:flutter/material.dart';

class SnippetPopupMenuButton extends StatelessWidget {
  SnippetPopupMenuButton({Key? key}) : super(key: key);

  final GlobalKey<PopupMenuButtonState<int>> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopupMenuButton'),
        automaticallyImplyLeading: false,
        actions: [
          PopupMenuButton<int>(
            key: _key,
            icon: Icon(Icons.settings),
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (context) {
              return <PopupMenuEntry<int>>[
                PopupMenuItem(child: Text('0'), value: 0),
                PopupMenuItem(child: Text('1'), value: 1),
              ];
            },
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _key.currentState!.showButtonMenu(),
          child: Text('Abrir/fechar menu'),
        ),
      ),
    );
  }
}
