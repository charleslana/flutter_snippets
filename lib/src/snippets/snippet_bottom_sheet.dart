import 'package:flutter/material.dart';

class SnippetBottomSheet extends StatelessWidget {
  const SnippetBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Tap the icon'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Wrap(
                children: [
                  ListTile(
                    leading: const Icon(Icons.music_note),
                    title: const Text('Music'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.videocam),
                    title: const Text('Movies'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.satellite),
                    title: const Text('Image'),
                    onTap: () {},
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
