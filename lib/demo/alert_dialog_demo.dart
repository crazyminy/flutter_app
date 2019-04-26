import 'package:flutter/material.dart';

enum Action{
  OK,
  cancel
}

class AlertDialogDemo extends StatefulWidget {
  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  String _choice  = "nothing";


  Future _openAlertDialog() async{
      final action = await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text('ALertDialog'),
          content: Text('Are you sure about this'),
          actions: <Widget>[
            FlatButton(
              child: Text('cancel'),
              onPressed: (){
                Navigator.pop(context,Action.cancel);
              },
            ),
            FlatButton(
              child: Text('confirm'),
              onPressed: (){
                Navigator.pop(context,Action.OK);
              },
            )
          ],
        );
      }
      );
      switch(action){
        case Action.OK:
          setState(() {
            _choice = 'OK';
          });
          break;
        case Action.cancel:
          setState(() {
            _choice = 'cancel';
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
                RaisedButton(
                  child: Text('open alertDialog'),
                  onPressed: _openAlertDialog,
                ),
              ],
            ),
            Text(
                'your choice is $_choice'
            ),
          ],
        ),
      ),
    );
  }
}
