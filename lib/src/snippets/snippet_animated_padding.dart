import 'package:flutter/material.dart';

class SnippetAnimatedPadding extends StatefulWidget {
  const SnippetAnimatedPadding({Key? key}) : super(key: key);

  @override
  _SnippetAnimatedPaddingState createState() => _SnippetAnimatedPaddingState();
}

class _SnippetAnimatedPaddingState extends State<SnippetAnimatedPadding> {
  final TextEditingController _textController =
      TextEditingController(text: '0');
  double _paddingValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) => Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedPadding(
                  padding: EdgeInsets.all(_paddingValue),
                  duration: const Duration(seconds: 1),
                  onEnd: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Animation ends'),
                      ),
                    );
                  },
                  child: Container(
                    width: 400,
                    height: 200,
                    color: Colors.blue,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 100,
                      height: 35,
                      child: TextFormField(
                        controller: _textController,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    const SizedBox(width: 15),
                    ElevatedButton(
                      onPressed: () {
                        if (int.parse(_textController.text) <= 100) {
                          setState(() {
                            _paddingValue = double.parse(_textController.text);
                          });
                        }
                      },
                      child: const Text('Set'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
