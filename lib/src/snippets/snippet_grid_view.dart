import 'package:flutter/material.dart';

class SnippetGridView extends StatelessWidget {
  SnippetGridView({Key? key}) : super(key: key);

  final List<Option> _options = <Option>[
    Option(
      titulo: 'Home',
      icon: Icons.home,
    ),
    Option(
      titulo: 'Home 2',
      icon: Icons.home,
    ),
    Option(
      titulo: 'Home 3',
      icon: Icons.home,
    ),
    Option(
      titulo: 'Home 4',
      icon: Icons.home,
    ),
  ];

  Widget _appCard(Option option) {
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
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
        padding: EdgeInsets.all(10),
        children: List.generate(_options.length, (index) {
          return Center(
            child: _appCard(_options[index]),
          );
        }),
      ),
    );
  }
}

class Option {
  final String titulo;
  final IconData icon;
  const Option({
    required this.titulo,
    required this.icon,
  });
}
