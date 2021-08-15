import 'package:flutter/material.dart';

class SnippetGridView extends StatelessWidget {
  const SnippetGridView({Key? key}) : super(key: key);

  static const List<SnippetGridViewOption> _options = [
    SnippetGridViewOption(
      titulo: 'Home',
      icon: Icons.home,
    ),
    SnippetGridViewOption(
      titulo: 'Home 2',
      icon: Icons.home,
    ),
    SnippetGridViewOption(
      titulo: 'Home 3',
      icon: Icons.home,
    ),
    SnippetGridViewOption(
      titulo: 'Home 4',
      icon: Icons.home,
    ),
  ];

  Widget _appCard(SnippetGridViewOption option) {
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(option.icon, size: 80),
            Text(option.titulo),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 3,
        padding: const EdgeInsets.all(10),
        children: List.generate(_options.length, (index) {
          return Center(
            child: _appCard(_options[index]),
          );
        }),
      ),
    );
  }
}

class SnippetGridViewOption {
  const SnippetGridViewOption({
    required this.titulo,
    required this.icon,
  });

  final String titulo;
  final IconData icon;
}
