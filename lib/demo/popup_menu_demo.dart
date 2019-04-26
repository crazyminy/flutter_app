import 'package:flutter/material.dart';

class PopupMenuButtonDemo extends StatefulWidget {
  @override
  _PopupMenuButtonDemoState createState() => _PopupMenuButtonDemoState();
}

class _PopupMenuButtonDemoState extends State<PopupMenuButtonDemo> {

  String _currentItem = "Home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PopupMenuButtonDemo'),),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_currentItem),
                PopupMenuButton(
                  onSelected: (value){
                    print(value);
                    setState(() {
                      _currentItem = value;
                    });
                  },
                  itemBuilder:(BuildContext context)=>[
                    PopupMenuItem(
                      value: 'Home',
                      child: Text('Home'),
                    ),
                    PopupMenuItem(
                      value: 'Return',
                      child: Text('Return'),
                    ),
                    PopupMenuItem(
                      value: "Ahead",
                      child: Text('Ahead'),
                    ),
                  ]
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
