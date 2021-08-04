import 'package:flutter/material.dart';

class SnippetExpansionPanel extends StatefulWidget {
  const SnippetExpansionPanel({Key? key}) : super(key: key);

  @override
  _SnippetExpansionPanelState createState() => _SnippetExpansionPanelState();
}

class _SnippetExpansionPanelState extends State<SnippetExpansionPanel> {
  bool active = false;
  String exTitle = 'Sport Categories';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ExpansionPanelList(
            expansionCallback: (panelIndex, isExpanded) {
              active = !active;
              if (exTitle == 'Sport Categories') {
                exTitle = 'Contract';
              } else {
                exTitle = 'Sport Categories';
              }
              setState(() {});
            },
            children: <ExpansionPanel>[
              ExpansionPanel(
                headerBuilder: (context, isExpanded) {
                  return Text(exTitle);
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
                      onPressed: () => null,
                      child: Text(
                        'All',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: null,
                      child: Text('Basketball'),
                    ),
                    ElevatedButton(
                      child: Text('Football'),
                      onPressed: () {},
                    ),
                    ElevatedButton(
                      child: Text('Tennis'),
                      onPressed: () {},
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
