import 'package:flutter/material.dart';

class SnippetPageView extends StatelessWidget {
  const SnippetPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Arraste a tela'),
        automaticallyImplyLeading: false,
      ),
      body: PageView(
        children: [
          Container(
            color: Colors.orange,
            child: Center(
              child: Text(
                'Primeira página',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.brown,
            child: Center(
              child: Text(
                'Segunda página',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
        onPageChanged: (index) {},
      ),
    );
  }
}
