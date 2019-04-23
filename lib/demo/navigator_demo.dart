import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child:Text('Home'),
              onPressed: null,
            ),
            FlatButton(
              child:Text('About'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
