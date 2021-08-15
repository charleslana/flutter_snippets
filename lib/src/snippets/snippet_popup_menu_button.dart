import 'package:flutter/material.dart';

class SnippetPopupMenuButton extends StatelessWidget {
  const SnippetPopupMenuButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<PopupMenuButtonState<int>> _key = GlobalKey();

    return Scaffold(
      appBar: AppBar(
        title: const Text('PopupMenuButton'),
        automaticallyImplyLeading: false,
        actions: [
          PopupMenuButton<int>(
            key: _key,
            icon: const Icon(Icons.settings),
            onSelected: print,
            itemBuilder: (context) {
              return const [
                PopupMenuItem(value: 0, child: Text('0')),
                PopupMenuItem(value: 1, child: Text('1')),
              ];
            },
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _key.currentState!.showButtonMenu(),
          child: const Text('Open menu'),
        ),
      ),
    );
  }
}
