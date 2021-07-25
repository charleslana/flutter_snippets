import 'package:flutter/material.dart';

class SnippetInteractiveViewer extends StatelessWidget {
  const SnippetInteractiveViewer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mova a imagem para obter o zoom'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: InteractiveViewer(
          child: Container(
            width: double.infinity,
            child: Image.network('https://i.imgur.com/hEbcdEB.png'),
          ),
        ),
      ),
    );
  }
}
