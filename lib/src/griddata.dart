import 'dart:math';
import 'package:flutter/material.dart';

class GridData extends DataTableSource {
  final List<Map<String, dynamic>> list = List.generate(
      20,
      (index) => {
            "Id": index,
            "Title": "Item of $index",
            "Price": Random().nextInt(10000)
          });

  @override
  DataRow getRow(int index) {
    return 
    DataRow.byIndex(
          index: index,
          cells: [
      DataCell(Text(
        list[index]['Id'].toString(),
      )),
      DataCell(Text(
        list[index]['Title'],
      )),
      DataCell(Text(
        list[index]['Price'].toString(),
      )),
    ],
        );
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => 20;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
}
