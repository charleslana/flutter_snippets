import 'package:flutter/material.dart';

class SnippetAppBar extends StatelessWidget {
  const SnippetAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar'),
        centerTitle: true,
        elevation: 2,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.access_alarm),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.timelapse),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
