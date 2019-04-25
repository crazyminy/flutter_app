import 'package:flutter/material.dart';

class MaterialComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title:'FloatingActionButton',page:FloatingActionButtonDemo()),
          ListItem(title:'ButtonDemo',page:ButtonDemo()),
        ],
      ),
    );
  }
}

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}


class ListItem extends StatelessWidget {

  final String title;
  final Widget page;


  ListItem({this.title,this.page});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>page));
      }
    );
  }
}

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
