import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final Widget flatButtonDemo = Row(
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

    final Widget raisedButtonDemo  = Row(
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

    final Widget outlineButtonDemo  =Row(
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

    final Widget fixedWidthButtonDemo  = Row(
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

    final Widget expandedButton = Row(
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

    final Widget buttonBarDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
              buttonTheme: ButtonThemeData(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
              )
          ),
          child: ButtonBar(children: <Widget>[
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
          ],),
        )


      ],
    );

    return Scaffold(
      appBar: AppBar(title: Text('ButtonDemo'),),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            flatButtonDemo,
            raisedButtonDemo,
            outlineButtonDemo,
            fixedWidthButtonDemo,
            expandedButton,
            buttonBarDemo,
          ],
        ),
      ),
    );
  }
}