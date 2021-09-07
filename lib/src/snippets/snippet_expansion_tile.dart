import 'package:flutter/material.dart';

class SnippetExpansionTile extends StatelessWidget {
  const SnippetExpansionTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: const [
            SizedBox(height: 20),
            ExpansionTile(
              title: Text(
                'Title',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              children: [
                ExpansionTile(
                  title: Text(
                    'Sub title',
                  ),
                  children: [
                    ListTile(title: Text('Sub data')),
                  ],
                ),
                ListTile(title: Text('Data')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
