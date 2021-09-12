import 'package:flutter/material.dart';

class SnippetHideKeyboard extends StatelessWidget {
  const SnippetHideKeyboard({Key? key}) : super(key: key);

  Widget _buildForm() {
    final GlobalKey<FormState> key = GlobalKey<FormState>();

    return Form(
      key: key,
      child: Column(
        children: [
          TextFormField(
            key: const Key('name'),
            autofillHints: const [AutofillHints.name],
            decoration: const InputDecoration(labelText: 'Name'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      onVerticalDragEnd: (DragEndDetails details) =>
          FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: _buildForm(),
        ),
      ),
    );
  }
}
