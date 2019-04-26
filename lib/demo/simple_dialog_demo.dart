import 'package:flutter/material.dart';

enum Option{
  A,B,C
}

class SimpleDialogDemo extends StatefulWidget {
  @override
  _SimpleDialogDemoState createState() => _SimpleDialogDemoState();
}

class _SimpleDialogDemoState extends State<SimpleDialogDemo> {

  String _choice = 'nothing';

  Future _openSimpleDialog()async{
    final option  = await showDialog(
      context: context,
      builder: (BuildContext context){
        return SimpleDialog(
          title: Text("simpledialog"),
          children: <Widget>[
            SimpleDialogOption(
              child: Text('OptionA'),
              onPressed: (){Navigator.pop(context,Option.A);}
            ),
            SimpleDialogOption(
                child: Text('OptionB'),
                onPressed: (){Navigator.pop(context,Option.B);}
            ),
            SimpleDialogOption(
                child: Text('OptionC'),
                onPressed: (){Navigator.pop(context,Option.C);}
            ),
          ],
        );
      }
    );
    switch(option){
      case Option.A:
        setState(() {
          _choice = 'A';
        });
        break;
      case Option.B:
        setState(() {
          _choice = 'B';
        });
        break;
      case Option.C:
        setState(() {
          _choice = 'C';
        });
        break;
      default:
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('_WidgetDemo'),),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('your choice is $_choice')
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.format_list_numbered),
        onPressed: _openSimpleDialog
      ),
    );
  }
}
