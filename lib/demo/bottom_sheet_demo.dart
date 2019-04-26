import 'package:flutter/material.dart';

class BottomSheetDemo extends StatefulWidget {
  @override
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {

  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();
  String 

  _openBottomSheet(){
    _bottomSheetScaffoldKey.currentState.showBottomSheet((BuildContext context){
      return BottomAppBar(
        child: Container(
          height: 90.0,
          width: double.infinity,
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              Icon(Icons.pause_circle_outline),
              SizedBox(width: 16.0,),
              Text('01:30/04:53'),
              Expanded(
                child: Text(
                  'Fix you - Coldplay',
                  textAlign: TextAlign.right,
                ),
              )
            ],
          ),
        ),
      );
    });
  }

  Future _openModalBottomSheet()async{
    final option = await showModalBottomSheet(
      context: context,
      builder: (BuildContext context){
        return Container(
          height: 200.0,
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('OptionA'),
                onTap:(){
                  Navigator.pop(context,"A");
                },
              ),
              ListTile(
                title: Text('OptionB'),
                onTap:(){
                  Navigator.pop(context,"B");
                },
              ),
              ListTile(
                title: Text('OptionC'),
                onTap:(){
                  Navigator.pop(context,"C");
                },
              ),
            ],
          ),
        );
      }
    );

    print(option);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetScaffoldKey,
      appBar: AppBar(title: Text('BottomSheetDemo'),),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text('open bottom sheet'),
                  onPressed: _openBottomSheet,
                ),
                FlatButton(
                  child: Text('modal bottom sheet'),
                  onPressed: _openModalBottomSheet,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
