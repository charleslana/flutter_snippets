import 'package:flutter/material.dart';

class SnippetDataTable extends StatelessWidget {
  const SnippetDataTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DataTable(
        columns: [
          DataColumn(
            label: Text(
              'ID',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Name',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'String',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ],
        rows: [
          DataRow(
            cells: [
              DataCell(Text('1')),
              DataCell(Text('Flutter 1')),
              DataCell(Text('Hello World 1')),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('2')),
              DataCell(Text('Flutter 2')),
              DataCell(Text('Hello World 2')),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('3')),
              DataCell(Text('Flutter 3')),
              DataCell(Text('Hello World 3')),
            ],
          ),
        ],
      ),
    );
  }
}
