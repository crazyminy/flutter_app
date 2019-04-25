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

    final Widget FlatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text('Button'),
          onPressed: (){},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          icon: Icon(Icons.subject),
          label: Text('Button'),
          onPressed: (){},
          splashColor: Colors.grey,
        ),
      ],
    );

    final Widget RaisedButtonDemo  = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
                textTheme: ButtonTextTheme.primary,
                shape: StadiumBorder()
            ),
          ),
          child: RaisedButton.icon(
            icon: Icon(Icons.subject),
            label: Text('Button'),
            onPressed: (){},
            splashColor: Colors.grey,
            elevation:21.0,
          ),
        ),
        RaisedButton(
          child: Text('Button'),
          onPressed: (){},
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
          elevation: 12.0,
        ),
        SizedBox(width: 21.0,),
        RaisedButton.icon(
          icon: Icon(Icons.subject),
          label: Text('Button'),
          onPressed: (){},
          splashColor: Colors.grey,
          elevation:21.0,
        ),
      ],
    );

    final Widget OutlineButtonDemo  =Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
                textTheme: ButtonTextTheme.primary,
                shape: StadiumBorder()
            ),
          ),
          child: RaisedButton.icon(
            icon: Icon(Icons.subject),
            label: Text('Button'),
            onPressed: (){},
            splashColor: Colors.grey,
            elevation:21.0,
          ),
        ),
        SizedBox(width: 21.0,),
        OutlineButton.icon(
          icon: Icon(Icons.subject),
          label: Text('Button'),
          onPressed: (){},
          splashColor: Colors.grey,
          borderSide: BorderSide(
              color: Colors.black87
          ),
          highlightedBorderColor: Colors.grey,
        ),
      ],
    );

    final Widget FixedWidthButtonDemo  = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          child: OutlineButton.icon(
            icon: Icon(Icons.subject),
            label: Text('Button'),
            onPressed: (){},
            splashColor: Colors.grey,
            borderSide: BorderSide(
                color: Colors.black87
            ),
            highlightedBorderColor: Colors.grey,
          ),
          width: 130.0,
        ),

      ],
    );

    final Widget ExpandedButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: OutlineButton.icon(
            icon: Icon(Icons.subject),
            label: Text('Button'),
            onPressed: (){},
            splashColor: Colors.grey,
            borderSide: BorderSide(
                color: Colors.black87
            ),
            highlightedBorderColor: Colors.grey,
          ),
        ),
        SizedBox(width: 16.0,),
        Expanded(
          flex: 2,
          child: OutlineButton.icon(
            icon: Icon(Icons.subject),
            label: Text('Button'),
            onPressed: (){},
            splashColor: Colors.grey,
            borderSide: BorderSide(
                color: Colors.black87
            ),
            highlightedBorderColor: Colors.grey,
          ),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(title: Text('ButtonDemo'),),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: OutlineButton.icon(
                    icon: Icon(Icons.subject),
                    label: Text('Button'),
                    onPressed: (){},
                    splashColor: Colors.grey,
                    borderSide: BorderSide(
                        color: Colors.black87
                    ),
                    highlightedBorderColor: Colors.grey,
                  ),
                ),
                SizedBox(width: 16.0,),
                Expanded(
                  flex: 2,
                  child: OutlineButton.icon(
                    icon: Icon(Icons.subject),
                    label: Text('Button'),
                    onPressed: (){},
                    splashColor: Colors.grey,
                    borderSide: BorderSide(
                        color: Colors.black87
                    ),
                    highlightedBorderColor: Colors.grey,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _WidgetDemo extends StatelessWidget {
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

              ],
            )
          ],
        ),
      ),
    );
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
