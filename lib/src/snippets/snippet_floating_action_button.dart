import 'package:flutter/material.dart';

class SnippetFloatingActionButton extends StatelessWidget {
  const SnippetFloatingActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        heroTag: 'btn1',
        backgroundColor: Colors.green,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
