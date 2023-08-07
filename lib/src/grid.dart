
import 'package:flutter/material.dart';
import 'package:gridwidget/src/DataType/gridinterface.dart';
import 'package:gridwidget/src/griddata.dart';

class Grid extends StatefulWidget {
  Grid({
    Key? key,
    this.gridTitle = const Text("My Table"),
    this.columnSpacing =  0,
    this.horizontalMargin =  0,
    this.rowsPerPage =  0,
    }): super(key: key);
    
  final Widget gridTitle;
  final double columnSpacing;
  final double horizontalMargin ;
  final int rowsPerPage;
  final DataTableSource tableData = GridData();
  final IGridColumn tableColumns = IGridColumn();

  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        PaginatedDataTable(
          columns: const [
            DataColumn(label: Text("Id")),
            DataColumn(label: Text("Name")),
            DataColumn(label: Text("Price")),
          ],
          source: widget.tableData,
          header: widget.gridTitle,
          columnSpacing: widget.columnSpacing > 0 ? widget.columnSpacing : 100,
          horizontalMargin: widget.horizontalMargin > 0 ? widget.horizontalMargin :70,
          rowsPerPage: widget.rowsPerPage > 0 ? widget.rowsPerPage : 10,
        )
      ]),
    );
  }
}
