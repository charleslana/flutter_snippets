import 'package:flutter/material.dart';

class AppMenu extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;

  const AppMenu({
    Key? key,
    required this.text,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 7.5;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        child: Row(
          children: [
            Icon(
              icon,
              size: 30,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  text,
                  style: TextStyle(fontSize: 18),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.blue[400],
          minimumSize: Size(double.maxFinite, height),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
