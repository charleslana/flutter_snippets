import 'dart:math';

import 'package:flutter/material.dart';

class SnippetDataTableWithSort extends StatefulWidget {
  const SnippetDataTableWithSort({Key? key}) : super(key: key);

  @override
  _SnippetDataTableWithSortState createState() =>
      _SnippetDataTableWithSortState();
}

class _SnippetDataTableWithSortState extends State<SnippetDataTableWithSort> {
  final List<Map<dynamic, dynamic>> _products = List.generate(30, (i) {
    return {
      'id': i,
      'name': 'Product $i',
      'price': Random().nextInt(200) + 1,
    };
  });

  int _currentSortColumn = 0;
  bool _isAscending = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: DataTable(
            sortColumnIndex: _currentSortColumn,
            sortAscending: _isAscending,
            headingRowColor: MaterialStateProperty.all(Colors.amber[200]),
            columns: [
              const DataColumn(label: Text('Id')),
              const DataColumn(label: Text('Name')),
              DataColumn(
                label: const Text(
                  'Price',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onSort: (columnIndex, _) {
                  setState(() {
                    _currentSortColumn = columnIndex;
                    if (_isAscending == true) {
                      _isAscending = false;
                      _products.sort((productA, productB) =>
                          productB['price'].compareTo(productA['price']));
                    } else {
                      _isAscending = true;
                      _products.sort((productA, productB) =>
                          productA['price'].compareTo(productB['price']));
                    }
                  });
                },
              ),
            ],
            rows: _products.map((item) {
              return DataRow(
                cells: [
                  DataCell(Text(item['id'].toString())),
                  DataCell(Text(item['name'])),
                  DataCell(Text(item['price'].toString()))
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
