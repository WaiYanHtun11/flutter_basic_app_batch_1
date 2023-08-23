import 'package:flutter/material.dart';
class DataTableDemo extends StatefulWidget {
  const DataTableDemo({super.key});

  @override
  State<DataTableDemo> createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: DataTable(
        headingTextStyle: const TextStyle(fontWeight: FontWeight.w500,fontSize: 20),
        columns: const [
          DataColumn(label: Text('Id')),
          DataColumn(label: Text('Name')),
          DataColumn(label: Text('Major')),
          DataColumn(label: Text('Class'))
        ],
        rows: List<DataRow>.generate(10, (index) => DataRow(
            cells: [
              DataCell(Text('$index')),
              DataCell(Text('Name $index')),
              DataCell(Text('Major $index')),
              DataCell(Text('Class $index'))
            ]
        )),
      ),
    );
  }
}
