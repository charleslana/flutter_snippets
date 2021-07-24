import 'package:flutter/material.dart';

class SnippetNavigatorWithArguments extends StatelessWidget {
  const SnippetNavigatorWithArguments({Key? key}) : super(key: key);

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
            MaterialPageRoute(
              builder: (context) => MyOtherPage(),
              settings: RouteSettings(
                arguments: 'Novo argumento',
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyOtherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Rota de outra página'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Text('Argumento passado: $args'),
            ),
            ElevatedButton(
              child: Text('Voltar para a home'),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
