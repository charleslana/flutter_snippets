import 'package:flutter/material.dart';

class SnippetDialog extends StatelessWidget {
  const SnippetDialog({Key? key}) : super(key: key);

  void _showAlertDialog(BuildContext context) {
    Widget _okButton = TextButton(
      child: Text('Ok'),
      onPressed: () => Navigator.pop(context, true),
    );

    Widget _cancelButton = TextButton(
      child: Text('Cancelar'),
      onPressed: () => Navigator.pop(context, false),
    );

    Widget _disableButton = TextButton(
      child: Text('Desabilitado'),
      onPressed: null,
    );

    AlertDialog _alert = AlertDialog(
      title: Text('Título da dialog'),
      content: Text('Descrição da dialog'),
      actions: [
        _okButton,
        _disableButton,
        _cancelButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return _alert;
      },
    ).then((value) {
      if (value == null) {
        return;
      }
      if (value) {
        print(value);
      } else {
        print(value);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Exibir Dialog'),
          onPressed: () => _showAlertDialog(context),
        ),
      ),
    );
  }
}
