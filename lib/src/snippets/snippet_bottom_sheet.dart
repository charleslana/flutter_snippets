import 'package:flutter/material.dart';

class SnippetBottomSheet extends StatelessWidget {
  const SnippetBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Clique no ícone'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                child: Wrap(
                  children: [
                    ListTile(
                      leading: Icon(Icons.music_note),
                      title: Text('Music'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.videocam),
                      title: Text('Movies'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: Icon(Icons.satellite),
                      title: Text('Image'),
                      onTap: () {},
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
