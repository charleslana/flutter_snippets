import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SnippetClipboard extends StatelessWidget {
  const SnippetClipboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _key = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: Text('Copiar'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            child: CustomToolTip(text: 'Clique aqui para copiar o texto'),
            onTap: () {},
          ),
          TextField(
            decoration: InputDecoration(hintText: 'Cole aqui'),
          ),
        ],
      ),
    );
  }
}

class CustomToolTip extends StatelessWidget {
  final String text;

  CustomToolTip({required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Tooltip(
        preferBelow: false,
        message: 'Copiar',
        child: Text(text),
      ),
      onTap: () {
        print('clicou');
        Clipboard.setData(ClipboardData(text: text)).then((_) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Copiado para sua área de transferência!'),
            ),
          );
        });
      },
    );
  }
}
