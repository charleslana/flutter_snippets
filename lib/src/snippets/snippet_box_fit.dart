import 'package:flutter/material.dart';

class SnippetBoxFit extends StatelessWidget {
  const SnippetBoxFit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage('https://i.imgur.com/3OVuXq3.png'),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Flexible(
              child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage('https://i.imgur.com/3OVuXq3.png'),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Flexible(
              child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: NetworkImage('https://i.imgur.com/3OVuXq3.png'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
