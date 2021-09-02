import 'package:flutter/material.dart';

class SnippetGridView extends StatelessWidget {
  const SnippetGridView({Key? key}) : super(key: key);

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
    final List<SnippetGridViewOption> options = [
      const SnippetGridViewOption(
        titulo: 'Home',
        icon: Icons.home,
      ),
      const SnippetGridViewOption(
        titulo: 'Home 2',
        icon: Icons.home,
      ),
      const SnippetGridViewOption(
        titulo: 'Home 3',
        icon: Icons.home,
      ),
      const SnippetGridViewOption(
        titulo: 'Home 4',
        icon: Icons.home,
      ),
    ];

    return Scaffold(
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 3,
        padding: const EdgeInsets.all(10),
        children: List.generate(options.length, (index) {
          return Center(
            child: _appCard(options[index]),
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
