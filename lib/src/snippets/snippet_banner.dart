import 'package:flutter/material.dart';

class SnippetBanner extends StatelessWidget {
  const SnippetBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: ClipRect(
            child: Banner(
              message: 'Text banner',
              location: BannerLocation.bottomStart,
              color: Colors.red,
              layoutDirection: TextDirection.ltr,
              child: Container(
                color: Colors.green[100],
                height: 300,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 100,
                        child: Image.network(
                          'https://i.imgur.com/w6vxktt.png',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Hello World!',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Hello World!',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Register'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
