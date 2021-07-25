import 'package:flutter/material.dart';

class SnippetBanner extends StatelessWidget {
  const SnippetBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10.0),
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
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 100,
                        child: Image.network(
                          'https://i.imgur.com/w6vxktt.png',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Hello World!',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Hello World!',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        child: Text('Register'),
                        onPressed: () {},
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
