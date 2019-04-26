import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  @override
  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {

  bool _checkBoxItemA = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CheckBoxDemo'),),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
              value: _checkBoxItemA,
              onChanged: (value){
                setState(() {
                  _checkBoxItemA = value;
                });
              },
              title: Text('checkBox Item A'),
              subtitle: Text('Descirption'),
              secondary: Icon(Icons.book),
              selected: _checkBoxItemA,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                /*Checkbox(
                  value: _checkBoxItemA,
                  onChanged: (value){
                    setState(() {
                      _checkBoxItemA = value;
                    });
                  },
                  activeColor: Colors.black,
                )*/
              ],
            )
          ],
        ),
      ),
    );
  }
}
