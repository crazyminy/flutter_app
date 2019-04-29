import 'package:flutter/material.dart';
import 'package:flutter_app/demo/alert_dialog_demo.dart';
import 'package:flutter_app/demo/bottom_sheet_demo.dart';
import 'package:flutter_app/demo/datetime_demo.dart';
import 'package:flutter_app/demo/simple_dialog_demo.dart';
import 'package:flutter_app/demo/slider_demo.dart';
import 'package:flutter_app/demo/switch_demo.dart';
import './button_demo.dart';
import './floating_action_demo.dart';
import './popup_menu_demo.dart';
import 'form_demo.dart';
import 'checkbox_demo.dart';
import 'radio_demo.dart';
import './snack_bar_demo.dart';
import './expansion_panel_demo.dart';
import './chip_demo.dart';
import './data_table_demo.dart';
import './step_demo.dart';


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
          ListItem(title:'SwitchDemo',page:SwitchDemo()),
          ListItem(title:'SliderDemo',page:SliderDemo()),
          ListItem(title:'DateTimeDemo',page:DateTimeDemo()),
          ListItem(title:'SimpleDialogDemo',page:SimpleDialogDemo()),
          ListItem(title:'AlertDialogDemo',page:AlertDialogDemo()),
          ListItem(title:'BottomSheetDemo',page:BottomSheetDemo()),
          ListItem(title:'SnackBarDemo',page:SnackBarDemo()),
          ListItem(title:'ExpansionPanelDemo',page:ExpansionPanelDemo()),
          ListItem(title:'ChipDemo',page:ChipDemo()),
          ListItem(title:'DataTableDemo',page:DataTableDemo()),
          ListItem(title:'StepDemo',page:StepDemo()),
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


