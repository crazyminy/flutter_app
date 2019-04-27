import 'package:flutter/material.dart';

class DataTableDemo extends StatefulWidget {
  @override
  _DataTableDemoState createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DataTableDemo'),),
      body: Container(
       padding: EdgeInsets.all(6.0),
       child: ListView(
         children: <Widget>[
           DataTable(
              columns: [
                DataColumn(label: Text('Title')),
                DataColumn(label: Text('Name')),
              ],
              rows:[
                DataRow(
                  cells: [
                    DataCell(Text('hola ~')),
                    DataCell(Text('ninghao')),
                  ],
                ),
                 DataRow(
                  cells: [
                    DataCell(Text('hello ~')),
                    DataCell(Text('ninghao')),
                  ],
                ),
                 DataRow(
                  cells: [
                    DataCell(Text('你好 ~')),
                    DataCell(Text('ninghao')),
                  ],
                ),
              ],
            ) 
         ],
       ),
      ),
    );
  }
}