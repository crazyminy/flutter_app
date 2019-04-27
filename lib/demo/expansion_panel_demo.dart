import 'package:flutter/material.dart';

class ExpansionPanelDemo extends StatefulWidget {
  @override
  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ExpansionPanelDemo'),),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ExpansionPanelList(
                  children: [
                    ExpansionPanel(
                      headerBuilder: (context,isExpanded){
                        return Container(
                          padding: EdgeInsets.all(16.0),
                          child:Text('Panel A',style: Theme.of(context).textTheme.title,),
                        );
                      },
                      body: Container(
                        padding: EdgeInsets.all(16.0),
                        width: double.infinity,
                        child: Text('Content for Panel A.'),
                      ),
                      isExpanded: true
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}