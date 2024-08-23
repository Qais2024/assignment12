import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';
class plutoogrid extends StatefulWidget {
  @override
  State<plutoogrid> createState() => _plutoogridState();
}
class _plutoogridState extends State<plutoogrid> {
  List<PlutoColumn> columns = [
    PlutoColumn(
      title: "نام",
      field: "name",
      backgroundColor: Colors.blue,
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: "سن",
      field: "age",
      type: PlutoColumnType.number(),
    ),
  ];
  List<PlutoRow> rows = [
    PlutoRow(cells: {
      "name": PlutoCell(value:"ali"),
      "age": PlutoCell(value: 25),
    }),
    PlutoRow(cells: {
      "name": PlutoCell(value: "ab hakim"),
      "age": PlutoCell(value: 28),
    }),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
      ),
      body: PlutoGrid(
        columns: columns,
        rows: rows,
        onLoaded: (PlutoGridOnLoadedEvent event) {
          event.stateManager.setShowColumnFilter(true);
        },
      ),
    );
  }
}