import 'package:flutter/material.dart';

// Primero definimos la clase de cada elemento dela tabla
class ComidaItem {
  final String name;
  final int calorias;
  ComidaItem(this.name, this.calorias);
}

// Definimos los valores de la lista
final List<ComidaItem> _comidaList = <ComidaItem>[
  ComidaItem("Yogurt", 87),
  ComidaItem("Hamburgesa", 700),
  ComidaItem("Hot Dog", 560),
  ComidaItem("Pizza", 1302),
  ComidaItem("Sandia", 110),
];

// Widget de nuestra tabla
Widget _buildTable({bool sortAscending = true}) {
  return DataTable(
    sortColumnIndex: 0,
    sortAscending: sortAscending,
    onSelectAll: (bool? value) {},
    columns: <DataColumn>[
      DataColumn(label: Text('Nombre'), tooltip: 'Nombre de la comida'),
      DataColumn(
          label: Text('Calorias'),
          tooltip: 'Calorias',
          numeric: true,
          onSort: (int columnIndez, bool ascending) {})
    ],
    rows: _comidaList.map<DataRow>((ComidaItem comidaItem) {
      return DataRow(onSelectChanged: (bool? selected) {}, cells: <DataCell>[
        DataCell(Text(comidaItem.name)),
        DataCell(Text(comidaItem.calorias.toString()),
            showEditIcon: true, onTap: () {})
      ]);
    }).toList(),
  );
}

class Tabla extends StatefulWidget {
  const Tabla({Key? key}) : super(key: key);

  @override
  _TablaState createState() => _TablaState();
}

class _TablaState extends State<Tabla> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tabla"),
      ),
      body: Center(
        child: _buildTable(sortAscending: true),
      ),
    );
  }
}
