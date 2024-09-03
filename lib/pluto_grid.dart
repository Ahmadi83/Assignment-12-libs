import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';



class Grid extends StatefulWidget {
  const Grid({super.key});

  @override
  State<Grid> createState() => _MyAppState();
}

class _MyAppState extends State<Grid> {

  List <PlutoRow> row =[

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Grid_TAble',style: TextStyle(color: Colors.white,fontSize: 30),),
        centerTitle: true,

      ),
      body: Container(
        child:
         MyPlutoGrid()

    ));
  }
}








class MyPlutoGrid extends StatefulWidget {
  @override
  _MyPlutoGridState createState() => _MyPlutoGridState();

}


class _MyPlutoGridState extends State<MyPlutoGrid> {
  late List<PlutoColumn> columns;
  late List<PlutoRow> rows;
  // late PlutoGridStateManager stateManager;

  @override
  void initState() {
    super.initState();

    columns = [
      PlutoColumn(
        title: 'ID',
        field: 'id',
        type: PlutoColumnType.text(),
      ),
      PlutoColumn(
        title: 'Name',
        field: 'name',
        type: PlutoColumnType.text(),
      ),
      PlutoColumn(
        title: 'Age',
        field: 'age',
        type: PlutoColumnType.number(),
      ),
    ];

    rows = [
      PlutoRow(cells: {
        'id': PlutoCell(value: '1'),
        'name': PlutoCell(value: 'Alice'),
        'age': PlutoCell(value: 23),
      }),
      PlutoRow(cells: {
        'id': PlutoCell(value: '2'),
        'name': PlutoCell(value: 'Bob'),
        'age': PlutoCell(value: 25),
      }),
      PlutoRow(cells: {
        'id': PlutoCell(value: '3'),
        'name': PlutoCell(value: 'Charlie'),
        'age': PlutoCell(value: 30),
      }),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PlutoGrid(
      columns: columns,
      rows: rows,
      // onChanged: (PlutoGridOnChangedEvent event) {
      //   print(event);
      // },
      // onLoaded: (PlutoGridOnLoadedEvent event) {
      //   stateManager = event.stateManager;
      // },
    );
  }
}