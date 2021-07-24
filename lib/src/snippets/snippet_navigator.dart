import 'package:flutter/material.dart';

class SnippetNavigator extends StatelessWidget {
  const SnippetNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rota da Home'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Ir para a outra rota'),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyOtherPage()),
          ),
        ),
      ),
    );
  }
}

class MyOtherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rota de outra página'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Voltar para a home'),
          onPressed: () => Navigator.pop(context),
        ),
      ),
    );
  }
}
