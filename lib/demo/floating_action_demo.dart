import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatelessWidget {

  final Widget _floatingActionButtonDemo = FloatingActionButton(
    onPressed: (){},
    child: Icon(Icons.add,color: Colors.grey[100],),
    elevation: 0.0,
    backgroundColor: Colors.black87,
    /*shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(30.0)
    ),*/
  );

  final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
      onPressed: (){},
      icon: Icon(Icons.add),
      label: Text('add')
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
        elevation: 0.0,
      ),
      floatingActionButton: _floatingActionButtonDemo,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80.0,
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}