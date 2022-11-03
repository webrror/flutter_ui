import 'package:flutter/material.dart';

class TableSample extends StatelessWidget {
  const TableSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tables'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: FittedBox(
            child: DataTable(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black)),
              dividerThickness: 2,
              columns: const [
                DataColumn(
                    label: Text(
                      'Name',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    tooltip: 'Name'),
                DataColumn(
                    label: Text(
                      'Age',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    tooltip: 'Age'),
                DataColumn(
                    label: Text(
                      'Email',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    tooltip: 'Email'),
                DataColumn(
                    label: Text(
                      'Contact',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    tooltip: 'Contact'),
              ],
              rows: const [
                DataRow(cells: [
                  DataCell(Text('Raj')),
                  DataCell(Text('22')),
                  DataCell(Text('j@gmail.com')),
                  DataCell(Text('32498518')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Max')),
                  DataCell(Text('21')),
                  DataCell(Text('max@gmail.com')),
                  DataCell(Text('31957487')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Raj')),
                  DataCell(Text('22')),
                  DataCell(Text('j@gmail.com')),
                  DataCell(Text('32498518')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Raj')),
                  DataCell(Text('22')),
                  DataCell(Text('j@gmail.com')),
                  DataCell(Text('32498518')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Raj')),
                  DataCell(Text('22')),
                  DataCell(Text('j@gmail.com')),
                  DataCell(Text('32498518')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Raj')),
                  DataCell(Text('22')),
                  DataCell(Text('j@gmail.com')),
                  DataCell(Text('32498518')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Raj')),
                  DataCell(Text('22')),
                  DataCell(Text('j@gmail.com')),
                  DataCell(Text('32498518')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Raj')),
                  DataCell(Text('22')),
                  DataCell(Text('j@gmail.com')),
                  DataCell(Text('32498518')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Raj')),
                  DataCell(Text('22')),
                  DataCell(Text('j@gmail.com')),
                  DataCell(Text('32498518')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Raj')),
                  DataCell(Text('22')),
                  DataCell(Text('j@gmail.com')),
                  DataCell(Text('32498518')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Raj')),
                  DataCell(Text('22')),
                  DataCell(Text('j@gmail.com')),
                  DataCell(Text('32498518')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Raj')),
                  DataCell(Text('22')),
                  DataCell(Text('j@gmail.com')),
                  DataCell(Text('32498518')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Raj')),
                  DataCell(Text('22')),
                  DataCell(Text('j@gmail.com')),
                  DataCell(Text('32498518')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Raj')),
                  DataCell(Text('22')),
                  DataCell(Text('j@gmail.com')),
                  DataCell(Text('32498518')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Raj')),
                  DataCell(Text('22')),
                  DataCell(Text('j@gmail.com')),
                  DataCell(Text('32498518')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Raj')),
                  DataCell(Text('22')),
                  DataCell(Text('j@gmail.com')),
                  DataCell(Text('32498518')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Raj')),
                  DataCell(Text('22')),
                  DataCell(Text('j@gmail.com')),
                  DataCell(Text('32498518')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Raj')),
                  DataCell(Text('22')),
                  DataCell(Text('j@gmail.com')),
                  DataCell(Text('32498518')),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
