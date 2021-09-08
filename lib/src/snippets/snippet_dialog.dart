import 'package:flutter/material.dart';

class SnippetDialog extends StatelessWidget {
  const SnippetDialog({Key? key}) : super(key: key);

  void _showAlertDialog(BuildContext context) {
    final Widget _okButton = TextButton(
      onPressed: () => Navigator.pop(context, true),
      child: const Text('Ok'),
    );

    final Widget _cancelButton = TextButton(
      onPressed: () => Navigator.pop(context, false),
      child: const Text('Cancel'),
    );

    const Widget _disableButton = TextButton(
      onPressed: null,
      child: Text('Disabled'),
    );

    final AlertDialog _alert = AlertDialog(
      title: const Text('Title'),
      content: const Text('Description'),
      actions: [
        _okButton,
        _disableButton,
        _cancelButton,
      ],
    );

    showDialog<dynamic>(
      context: context,
      builder: (BuildContext context) {
        return _alert;
      },
    ).then((value) {
      if (value == null) {
        return;
      }
      if (value) {
      } else {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showAlertDialog(context),
          child: const Text('Show dialog'),
        ),
      ),
    );
  }
}
