import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {

  List<String> _tags = ['apple','banana','lemon'];
  String _text = 'nothing';
  List<String> _selected = [];
  String _choice = 'lemon';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ChipDemo'),),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: <Widget>[
                Chip(
                  label: Text("Sunset"),
                  backgroundColor: Colors.grey,
                ),
                Chip(
                  label: Text("Sunrise"),
                  backgroundColor: Colors.orange,
                ),
                Chip(
                  label: Text("Sunrise"),
                  avatar: CircleAvatar(
                    child: Text("阳",style: TextStyle(color: Colors.orange),),
                    backgroundColor: Colors.grey,
                  ),
                ),
                Chip(
                  label: Text("Ice bear"),
                  avatar: CircleAvatar(
                    backgroundImage: AssetImage('assets/bear.jpg'),
                  ),
                ),
                Chip(
                  label: Text("Ice bear"),
                  avatar: CircleAvatar(
                    backgroundImage: AssetImage('assets/bear.jpg'),
                  ),
                ),
                Chip(
                  label: Text('panda'),
                  onDeleted: (){},
                  deleteIcon: Icon(Icons.delete),
                  deleteButtonTooltipMessage: 'remove this tag',
                ),
                Divider(color: Colors.red,height: 32.0,indent: 32.0,),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag){
                    return Chip(
                      label: Text(tag),
                      onDeleted: (){
                        setState(() {
                         _tags.remove(tag); 
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(color: Colors.red,height: 32.0,indent: 32.0,),
                Container(
                  width: double.infinity,
                  child: Text(_text),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag){
                    return ActionChip(
                      label: Text(tag),
                      onPressed: (){
                        setState(() {
                         _text=tag; 
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(color: Colors.red,height: 32.0,indent: 32.0,),
                Container(
                  width: double.infinity,
                  child: Text(_selected.toString()),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag){
                    return FilterChip(
                      label: Text(tag),
                      selected: _selected.contains(tag),
                      selectedColor: Colors.orange,
                      onSelected: (value){
                        setState(() {
                         if(_selected.contains(tag)){
                           _selected.remove(tag);
                         } else{
                           _selected.add(tag);
                         }
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(color: Colors.red,height: 32.0,indent: 32.0,),
                Container(
                  width: double.infinity,
                  child: Text(_choice),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag){
                    return FilterChip(
                      label: Text(tag),
                      selected: _choice==tag,
                      selectedColor: Colors.orange,
                      onSelected: (value){
                        setState(() {
                         _choice = tag;
                        });
                      },
                    );
                  }).toList(),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
           _tags = ['apple','banana','lemon']; 
          });
        },
        child: Icon(Icons.restore),
      ),
    );
  }
}