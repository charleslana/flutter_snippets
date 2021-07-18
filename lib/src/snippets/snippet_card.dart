import 'package:flutter/material.dart';

class SnippetCard extends StatelessWidget {
  const SnippetCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: [
              Card(
                color: Colors.grey[100],
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        'https://i.imgur.com/AcfrVWB.png',
                        height: 150,
                        width: 150,
                      ),
                      Text(
                        'Um Texto grande com varias linhas Um Texto grande com varias linhas',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Um Texto',
                        style: TextStyle(fontSize: 14),
                      ),
                      ButtonTheme(
                        child: ButtonBar(
                          children: [
                            TextButton(
                              child: const Text('DETALHES'),
                              onPressed: () {},
                            ),
                            TextButton(
                              child: const Text('SHARE'),
                              onPressed: () {},
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
