import 'package:flutter/material.dart';

class SnippetTable extends StatelessWidget {
  const SnippetTable({Key? key}) : super(key: key);

  TableRow _createLinesTable(String listSplit) {
    return TableRow(
      children: listSplit.split(',').map((name) {
        return Container(
          alignment: Alignment.center,
          child: Text(
            name,
            style: TextStyle(fontSize: 20),
          ),
          padding: EdgeInsets.all(8),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Table(
          defaultColumnWidth: IntrinsicColumnWidth(),
          border: TableBorder(
            horizontalInside: BorderSide(
              color: Colors.grey,
              style: BorderStyle.solid,
              width: 1,
            ),
            verticalInside: BorderSide(
              color: Colors.grey,
              style: BorderStyle.solid,
              width: 1,
            ),
          ),
          children: [
            _createLinesTable('Curso, Valor, Estrelas'),
            _createLinesTable('Flutter, 100, 5'),
            _createLinesTable('Flutter dev, 50, 4'),
          ],
        ),
      ),
    );
  }
}
