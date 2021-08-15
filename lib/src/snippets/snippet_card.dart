import 'package:flutter/material.dart';

class SnippetCard extends StatelessWidget {
  const SnippetCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              Card(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        'https://i.imgur.com/AcfrVWB.png',
                        height: 150,
                        width: 150,
                      ),
                      const Text(
                        'Title',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 20),
                      ),
                      const Text(
                        'Description',
                        style: TextStyle(fontSize: 14),
                      ),
                      ButtonTheme(
                        child: ButtonBar(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Text('DETAILS'),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text('SHARE'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
