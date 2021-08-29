import 'package:flutter/material.dart';

class SnippetExpansionPanel extends StatefulWidget {
  const SnippetExpansionPanel({Key? key}) : super(key: key);

  @override
  _SnippetExpansionPanelState createState() => _SnippetExpansionPanelState();
}

class _SnippetExpansionPanelState extends State<SnippetExpansionPanel> {
  bool active = false;
  String title = 'Open';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ExpansionPanelList(
            expansionCallback: (panelIndex, isExpanded) {
              active = !active;
              if (title == 'Open') {
                title = 'Expansion';
              } else {
                title = 'Open';
              }
              setState(() {});
            },
            children: <ExpansionPanel>[
              ExpansionPanel(
                headerBuilder: (context, isExpanded) {
                  return Text(title);
                },
                body: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  spacing: 7,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors.red;
                            }
                            return Colors.black;
                          },
                        ),
                      ),
                      onPressed: null,
                      child: const Text(
                        'Text 1',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const ElevatedButton(
                      onPressed: null,
                      child: Text('Text 2'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Text 3'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Text 4'),
                    ),
                  ],
                ),
                isExpanded: active,
                canTapOnHeader: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
