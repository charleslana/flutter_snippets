import 'package:flutter/material.dart';

class SnippetExpandIcon extends StatefulWidget {
  const SnippetExpandIcon({Key? key}) : super(key: key);

  @override
  _SnippetExpandIconState createState() => _SnippetExpandIconState();
}

class _SnippetExpandIconState extends State<SnippetExpandIcon> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.teal,
            child: Row(
              children: [
                const SizedBox(width: 25),
                const Expanded(
                  child: Text(
                    'Text',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                ),
                ExpandIcon(
                  isExpanded: _isExpanded,
                  color: Colors.white,
                  expandedColor: Colors.black,
                  disabledColor: Colors.grey,
                  onPressed: (bool isExpanded) {
                    setState(() {
                      _isExpanded = !isExpanded;
                    });
                  },
                ),
                const SizedBox(width: 25),
              ],
            ),
          ),
          Visibility(
            visible: _isExpanded,
            child: const Padding(
              padding: EdgeInsets.all(15),
              child: Text('Hello World'),
            ),
          ),
        ],
      ),
    );
  }
}
