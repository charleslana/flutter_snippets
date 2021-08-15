import 'package:flutter/material.dart';

class SnippetTable extends StatelessWidget {
  const SnippetTable({Key? key}) : super(key: key);

  TableRow _createLinesTable(String listSplit) {
    return TableRow(
      children: listSplit.split(',').map((name) {
        return Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8),
          child: Text(
            name,
            style: const TextStyle(fontSize: 20),
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Table(
          defaultColumnWidth: const IntrinsicColumnWidth(),
          border: const TableBorder(
            horizontalInside: BorderSide(
              color: Colors.grey,
            ),
            verticalInside: BorderSide(
              color: Colors.grey,
            ),
          ),
          children: [
            _createLinesTable('Course, Price, Star'),
            _createLinesTable('Flutter, 100, 5'),
            _createLinesTable('Dart, 50, 4'),
          ],
        ),
      ),
    );
  }
}
