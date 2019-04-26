import 'package:flutter/material.dart';
import './button_demo.dart';
import './floating_action_demo.dart';
import './popup_menu_demo.dart';
import 'form_demo.dart';
import 'checkbox_demo.dart';
import 'radio_demo.dart';

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
          ListItem(title:'PopupMenuButton',page:PopupMenuButtonDemo()),
          ListItem(title:'FormDemo',page:FormDemo()),
          ListItem(title:'CheckBoxDemo',page:CheckBoxDemo()),
          ListItem(title:'RadioDemo',page:RadioDemo()),
        ],
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


