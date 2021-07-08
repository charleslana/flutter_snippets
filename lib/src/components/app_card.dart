import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;

  const AppCard({
    Key? key,
    required this.text,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue[400],
      child: InkWell(
        splashColor: Colors.white.withAlpha(30),
        onTap: onPressed,
        child: ListTile(
          leading: Icon(
            icon,
            color: Colors.white,
          ),
          title: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
