import 'package:flutter/material.dart';

class SnippetToggleButtons extends StatefulWidget {
  const SnippetToggleButtons({Key? key}) : super(key: key);

  @override
  _SnippetToggleButtonsState createState() => _SnippetToggleButtonsState();
}

class _SnippetToggleButtonsState extends State<SnippetToggleButtons> {
  final List<bool> _isSelected = [false, true, false];
  final FocusNode _focusNodeButton1 = FocusNode();
  final FocusNode _focusNodeButton2 = FocusNode();
  final FocusNode _focusNodeButton3 = FocusNode();
  List<FocusNode> _focusToggle = [];

  @override
  void initState() {
    _focusToggle = [
      _focusNodeButton1,
      _focusNodeButton2,
      _focusNodeButton3,
    ];
    super.initState();
  }

  @override
  void dispose() {
    _focusNodeButton1.dispose();
    _focusNodeButton2.dispose();
    _focusNodeButton3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ToggleButtons(
                color: Colors.greenAccent,
                selectedColor: Colors.amberAccent,
                fillColor: Colors.purple,
                splashColor: Colors.lightBlue,
                highlightColor: Colors.lightBlue,
                borderColor: Colors.white,
                borderWidth: 5,
                selectedBorderColor: Colors.greenAccent,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
                disabledColor: Colors.blueGrey,
                disabledBorderColor: Colors.blueGrey,
                focusColor: Colors.red,
                focusNodes: _focusToggle,
                isSelected: _isSelected,
                onPressed: (int index) {
                  setState(() {
                    _isSelected[index] = !_isSelected[index];
                  });
                },
                children: const [
                  Icon(Icons.format_bold),
                  Icon(Icons.format_italic),
                  Icon(Icons.link),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          FocusScope.of(context)
                              .requestFocus(_focusNodeButton1);
                        },
                        child: const Text('Button 1'),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          FocusScope.of(context)
                              .requestFocus(_focusNodeButton2);
                        },
                        child: const Text('Button 2'),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          FocusScope.of(context)
                              .requestFocus(_focusNodeButton3);
                        },
                        child: const Text('Button 3'),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
