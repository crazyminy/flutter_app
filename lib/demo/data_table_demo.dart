import 'package:flutter/material.dart';
import '../model/post.dart';

class DataTableDemo extends StatefulWidget {
  @override
  _DataTableDemoState createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {

  generateRows(List<Post> posts){
    return posts.map((post){
      return DataRow(
        cells: [
          DataCell(Text(post.title)),
          DataCell(Text(post.author)),
          DataCell(Image.network(post.imageUrl)),
        ]
      );
    }).toList();
  }


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
                DataColumn(label: Text('Author')),
                DataColumn(label: Text('Image')),
              ],
              // rows:[
              //   DataRow(
              //     cells: [
              //       DataCell(Text('hola ~')),
              //       DataCell(Text('ninghao')),
              //     ],
              //   ),
              //    DataRow(
              //     cells: [
              //       DataCell(Text('hello ~')),
              //       DataCell(Text('ninghao')),
              //     ],
              //   ),
              //    DataRow(
              //     cells: [
              //       DataCell(Text('你好 ~')),
              //       DataCell(Text('ninghao')),
              //     ],
              //   ),
              // ],
              rows: generateRows(posts),
            ) 
         ],
       ),
      ),
    );
  }
}