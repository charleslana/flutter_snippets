import 'package:flutter/material.dart';

class SnippetUnconstrainedBox extends StatelessWidget {
  const SnippetUnconstrainedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.black38,
          child: UnconstrainedBox(
            alignment: AlignmentDirectional.bottomStart,
            child: SizedBox(
              width: 100,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Button'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
