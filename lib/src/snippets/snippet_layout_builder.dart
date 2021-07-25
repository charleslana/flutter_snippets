import 'package:flutter/material.dart';

class SnippetLayoutBuilder extends StatelessWidget {
  const SnippetLayoutBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red.withOpacity(0.5),
        height: MediaQuery.of(context).size.height * 0.5,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        child: LayoutBuilder(
          builder: (BuildContext ctx, BoxConstraints constraints) {
            return Container(
              color: Colors.green.withOpacity(0.5),
              alignment: Alignment.center,
              height: constraints.maxHeight * 0.5,
              width: constraints.maxWidth * 0.5,
              child: Text(
                'LayoutBuilder Widget',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
