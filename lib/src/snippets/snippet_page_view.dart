import 'package:flutter/material.dart';

class SnippetPageView extends StatelessWidget {
  const SnippetPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (index) {},
        children: [
          Container(
            color: Colors.orange,
            child: const Center(
              child: Text(
                'First page',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.brown,
            child: const Center(
              child: Text(
                'Second page',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
